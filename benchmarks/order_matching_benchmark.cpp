#include "../src/matching_engine.hpp"
#include <iostream>
#include <chrono>

int main() {
    MatchingEngine engine(8080);
    
    const int num_orders = 100000;  
    auto start = std::chrono::high_resolution_clock::now();

    for (int i = 0; i < num_orders; i++) {
        Order buy_order = {static_cast<uint64_t>(i), true, 100.0 + (i % 10), 10, static_cast<uint64_t>(i)};
        engine.process_order(buy_order, "AAPL");
    }

    auto end = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double> diff = end - start;
    std::cout << "Processed " << num_orders << " orders in " << diff.count() << " seconds\n";

    return 0;
}
