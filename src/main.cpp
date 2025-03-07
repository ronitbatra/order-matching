#include "matching_engine.hpp"
#include <iostream>
#include <thread>
#include <chrono>

int main() {
    int port = 8080;
    MatchingEngine engine(port);

    engine.start_engine();

    std::cout << "Matching Engine running on port " << port << "...\n";

    while (true) {
        std::this_thread::sleep_for(std::chrono::seconds(5));
        engine.print_order_book("AAPL");
    }

    return 0;
}
