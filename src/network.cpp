#include "network.hpp"
#include <iostream>
#include <sys/socket.h>
#include <netinet/in.h>
#include <unistd.h>
#include <cstring>
#include <fcntl.h>
#ifdef __linux__
#include <sys/epoll.h>
#elif __APPLE__
#include <sys/event.h>  // Use kqueue on macOS
#include <sys/time.h>
#endif


#define MAX_EVENTS 10

Network::Network(int port) : port(port) {
    sockfd = socket(AF_INET, SOCK_DGRAM, 0);
    if (sockfd < 0) {
        std::cerr << "Error creating socket" << std::endl;
        exit(1);
    }

    sockaddr_in server_addr{};
    server_addr.sin_family = AF_INET;
    server_addr.sin_addr.s_addr = INADDR_ANY;
    server_addr.sin_port = htons(port);

    if (bind(sockfd, (struct sockaddr*)&server_addr, sizeof(server_addr)) < 0) {
        std::cerr << "Error binding socket" << std::endl;
        exit(1);
    }

    // Set socket to non-blocking mode
    fcntl(sockfd, F_SETFL, O_NONBLOCK);
}

Network::~Network() {
    close(sockfd);
}

void Network::set_order_callback(std::function<void(const std::string&)> callback) {
    order_callback = std::move(callback);
}

void Network::start() {
#ifdef __linux__
    int poll_fd = epoll_create1(0);
#elif __APPLE__
    int poll_fd = kqueue();
#endif

    if (poll_fd == -1) {
        std::cerr << "Error creating polling instance" << std::endl;
        exit(1);
    }

#ifdef __linux__
    epoll_event event{};
    event.data.fd = sockfd;
    event.events = EPOLLIN;
    epoll_ctl(poll_fd, EPOLL_CTL_ADD, sockfd, &event);
#elif __APPLE__
    struct kevent event;
    EV_SET(&event, sockfd, EVFILT_READ, EV_ADD, 0, 0, NULL);
    kevent(poll_fd, &event, 1, NULL, 0, NULL);
#endif

    while (true) {
#ifdef __linux__
        epoll_event events[10];
        int n = epoll_wait(poll_fd, events, 10, -1);
#elif __APPLE__
        struct kevent events[10];
        int n = kevent(poll_fd, NULL, 0, events, 10, NULL);
#endif
        for (int i = 0; i < n; i++) {
#ifdef __linux__
            if (events[i].data.fd == sockfd)
#elif __APPLE__
            if (events[i].ident == sockfd)
#endif
            {
                char buffer[1024];
                sockaddr_in client_addr{};
                socklen_t addr_len = sizeof(client_addr);
                ssize_t len = recvfrom(sockfd, buffer, sizeof(buffer) - 1, 0,
                                       (struct sockaddr*)&client_addr, &addr_len);
                if (len > 0) {
                    buffer[len] = '\0';
                    std::string order_data(buffer);
                    if (order_callback) {
                        order_callback(order_data);
                    }
                }
            }
        }
    }
}
