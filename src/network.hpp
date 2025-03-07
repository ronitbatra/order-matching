#ifndef NETWORK_HPP
#define NETWORK_HPP

#include <string>
#include <functional>

class Network {
public:
    Network(int port);
    ~Network();

    void start();
    void set_order_callback(std::function<void(const std::string&)> callback);

private:
    int sockfd;
    int port;
    std::function<void(const std::string&)> order_callback;
};

#endif
