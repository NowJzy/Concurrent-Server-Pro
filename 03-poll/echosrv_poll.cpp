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

using namespace std;

typedef vector<struct pollfd> PollFdList;

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

    struct pollfd pfd;
    pfd.fd = listenfd;
    pfd.events = POLLIN;

    PollFdList pollfds;
    pollfds.push_back(pfd);

    int nready;

    struct sockaddr_in peeraddr;
    socklen_t peerlen;
    int connfd;

    while(1){
        nready = poll(&*pollfds.begin(), pollfds.size(), -1);
        if(nready == -1){
            if(errno == EINTR){
                continue;
            }
            error(1, errno, "poll error");
        }
        if(nready == 0){
            continue;
        }

        if(pollfds[0].revents & POLLIN){
            peerlen = sizeof(peeraddr);
            connfd = accept4(listenfd, (struct sockaddr*)&peerlen, &peerlen, SOCK_NONBLOCK | SOCK_CLOEXEC);
            
            // if(connfd < 0){
            //     error(1, errno, "accept4 error");
            // }

            if(connfd == -1){
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

            pfd.fd = connfd;
            pfd.events = POLLIN;
            pfd.revents = 0;
            pollfds.push_back(pfd);
            --nready;

            // 连接成功
            cout << "ip = " << inet_ntoa(peeraddr.sin_addr) << "\t" << "port = " << ntohs(peeraddr.sin_port) << endl;
            if(nready == 0){
                continue;
            }
        }

        for(auto it = pollfds.begin() + 1; it != pollfds.end() && nready > 0; ++it){
            if(it->revents & POLLIN){
                connfd = it->fd;
                char buf[1024];
                memset(buf, 0, sizeof(buf));
                int n = read(connfd, buf, sizeof(buf));
                if(n < 0){
                    error(1, errno, "read error");
                }else if(n == 0){
                    cout << "peer close" << endl;
                    it = pollfds.erase(it);
                    --it;

                    close(connfd);
                    continue;
                }

                cout << buf;
                write(connfd, buf, strlen(buf));
            }
        }

    }
    return 0;
}