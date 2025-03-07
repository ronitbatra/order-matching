#include <iostream>
#include <chrono>
#include <thread>
#include <arpa/inet.h>
#include <unistd.h>


void send_udp_order(const std::string& order, int port) {
    int sock = socket(AF_INET, SOCK_DGRAM, 0);
    sockaddr_in server_addr{};
    server_addr.sin_family = AF_INET;
    server_addr.sin_port = htons(port);
    inet_pton(AF_INET, "127.0.0.1", &server_addr.sin_addr);

    sendto(sock, order.c_str(), order.size(), 0, (struct sockaddr*)&server_addr, sizeof(server_addr));
    close(sock);
}

int main() {
    const int num_orders = 10000;
    int port = 8080;

    auto start = std::chrono::high_resolution_clock::now();

    for (int i = 0; i < num_orders; i++) {
        send_udp_order("buy 100.5 10", port);
    }

    auto end = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double> diff = end - start;
    std::cout << "Sent " << num_orders << " UDP orders in " << diff.count() << " seconds\n";

    return 0;
}
