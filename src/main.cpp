#include "matching_engine.hpp"
#include <iostream>
#include <thread>
#include <chrono>

int main() {
    int port = 8080;  // Define the UDP port for order intake
    MatchingEngine engine(port);

    // Start the matching engine (spawns the network listener)
    engine.start_engine();

    std::cout << "Matching Engine running on port " << port << "...\n";

    // Keep the engine running to process incoming network orders
    while (true) {
        std::this_thread::sleep_for(std::chrono::seconds(5));
        engine.print_order_book("AAPL");
    }

    return 0;
}
