#include <unistd.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <errno.h>
#include <error.h>
#include <string.h>
#include <stdio.h>
#include <iostream>

using namespace std;

int main(int argc, char* argv[]){
    if(argc != 2){
        error(1, 0, "usage: echocli <IPAddress>");
    }

    int sockfd;
    // sockfd = socket(AF_INET, SOCK_STREAM | SOCK_NONBLOCK | SOCK_CLOEXEC, 0);
    sockfd = socket(AF_INET, SOCK_STREAM, 0);

    if(sockfd < 0){
        error(1, errno, "socket error");
    }

    struct sockaddr_in sockaddr;
    sockaddr.sin_family = AF_INET;
    sockaddr.sin_port = htons(5199);
    inet_pton(AF_INET, argv[1], &sockaddr.sin_addr);

    int conn = connect(sockfd, (struct sockaddr*)&sockaddr, sizeof(sockaddr));
    if(conn < 0){
        error(1, errno, "connect error");
    }

    struct sockaddr_in localaddr;
    socklen_t adddrlen = sizeof(localaddr);
    if(getsockname(sockfd, (struct sockaddr*)&localaddr, &adddrlen) < 0){
        error(1, errno, "getsockname error");
    }

    cout << "ip = " << inet_ntoa(localaddr.sin_addr) << "\t" << "port = " << ntohs(localaddr.sin_port) << endl;

    char buf[1024];
    memset(buf, 0, sizeof(buf));

    while(fgets(buf, sizeof(buf), stdin) != nullptr){
        int n = write(sockfd, buf, strlen(buf));
        if(n < 0){
            error(1, errno, "write error");
        }

        memset(buf, 0, sizeof(buf));

        int nread = read(sockfd, buf, sizeof(buf));
        if(nread < 0){
            error(1, errno, "read error");
        }else if(nread == 0){
            cout << "server close" << endl;
            break;
        }

        cout << buf;
    }
    close(sockfd);

    return 0;   
}