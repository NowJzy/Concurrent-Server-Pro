#include <unistd.h>
#include <iostream>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <signal.h>
#include <errno.h>
#include <error.h>
#include <poll.h>
#include <vector>
#include <string.h>
#include <fcntl.h>
#include <sys/epoll.h>
#include <algorithm>

using namespace std;

typedef vector<struct pollfd> PollFdList;
typedef vector<struct epoll_event> EventList;

int main(int argc, char* argv[]){
    signal(SIGPIPE, SIG_IGN);
    signal(SIGCHLD, SIG_IGN);

    int idlefd = open("/dev/null", O_RDONLY | O_CLOEXEC);

    int listenfd;
    listenfd = socket(AF_INET, SOCK_STREAM | SOCK_NONBLOCK | SOCK_CLOEXEC, 0);
    if(listenfd < 0){
        error(1, errno, "socket error");
    }

    struct sockaddr_in servaddr;
    bzero(&servaddr, sizeof(servaddr));
    servaddr.sin_family = AF_INET;
    servaddr.sin_port = htons(5199);
    servaddr.sin_addr.s_addr = htonl(INADDR_ANY);

    int on = 1;
    setsockopt(listenfd, SOL_SOCKET, SO_REUSEADDR, &on, sizeof(on));

    int rt1 = bind(listenfd, (struct sockaddr*)&servaddr, sizeof(servaddr));
    if(rt1 < 0){
        error(1, errno, "bind error");
    }

    int rt2 = listen(listenfd, SOMAXCONN);
    if(rt2 < 0){
        error(1, errno, "listen error");
    }

    // struct pollfd pfd;
    // pfd.fd = listenfd;
    // pfd.events = POLLIN;

    // PollFdList pollfds;
    // pollfds.push_back(pfd);

    vector<int> clients;
    int epollfd;
    epollfd = epoll_create1(EPOLL_CLOEXEC);

    struct epoll_event event;
    event.data.fd = listenfd;
    event.events = EPOLLIN /*| EPOLLET*/;
    epoll_ctl(epollfd, EPOLL_CTL_ADD, listenfd, &event);

    EventList events(16);
    struct sockaddr_in peeraddr;
    socklen_t peerlen;
    int connfd;

    int nready;
    while(1){
        nready = epoll_wait(epollfd, &*events.begin(), static_cast<int>(events.size()), -1);
        if(nready == -1){
            if(errno == EINTR){
                continue;
            }
            error(1, errno, "epoll_wait error");
        }
        if(nready == 0){
            continue;
        }

        if((size_t)nready == events.size()){
            events.resize(events.size() * 2);
        }

        for(int i = 0; i < nready; ++i){
            if(events[i].data.fd == listenfd){
                peerlen = sizeof(peerlen);
                connfd = accept4(listenfd, (struct sockaddr*)&peeraddr, &peerlen, SOCK_NONBLOCK | SOCK_CLOEXEC);

                if(connfd == -1){
                    // error(1, errno, "accept4 error");
                    if(errno == EMFILE){
                        close(idlefd);
                        idlefd = accept(listenfd, nullptr, nullptr);
                        close(idlefd);
                        idlefd = open("/dev/null", O_RDONLY | O_CLOEXEC);
                        continue;
                    }else{
                        error(1, errno, "accept4 error");
                    }
                }

                cout << "ip = " << inet_ntoa(peeraddr.sin_addr) << "\t" << "port = " << ntohs(peeraddr.sin_port) << endl;
                clients.push_back(connfd);
                event.data.fd = connfd;
                event.events = EPOLLIN;
                epoll_ctl(epollfd, EPOLL_CTL_ADD, connfd, &event);
            }else if(events[i].events & EPOLLIN){
                connfd = events[i].data.fd;
                if(connfd < 0){
                    continue;
                }

                char buf[1024] = {0};
                int ret = read(connfd, buf, sizeof(buf));
                if(ret == -1){
                    error(1, errno, "read error");
                }
                else if(ret == 0){
                    cout << "peer close" << endl;
                    close(connfd);
                    event = events[i];
                    epoll_ctl(epollfd, EPOLL_CTL_DEL, connfd, &event);
                    clients.erase(remove(clients.begin(), clients.end(), connfd), clients.end());
                    continue;
                }

                cout << buf;
                write(connfd, buf, strlen(buf));
            }
        }
    }
    return 0;
}