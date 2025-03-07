#include "matching_engine.hpp"
#include <iostream>
#include <thread>
#include <vector>
#include <chrono>

void submit_orders(MatchingEngine &engine, int thread_id) {
    for (int i = 0; i < 5; ++i) {
        Order buy_order = {static_cast<uint64_t>(thread_id * 10 + i), true, 100.0 + i, 10, static_cast<uint64_t>(i)};
        Order sell_order = {static_cast<uint64_t>(thread_id * 10 + i + 5), false, 100.0 + i, 10, static_cast<uint64_t>(i)};

        engine.process_order(buy_order, "AAPL");
        engine.process_order(sell_order, "AAPL");
    }
}

int main() {
    MatchingEngine engine;

    std::thread engine_thread([&]() { engine.start_engine(); });

    std::vector<std::thread> order_threads;
    for (int i = 0; i < 5; ++i) {
        order_threads.emplace_back(submit_orders, std::ref(engine), i);
    }

    for (auto &t : order_threads) {
        t.join();
    }

    std::this_thread::sleep_for(std::chrono::seconds(2));

    engine.print_order_book("AAPL");

    engine_thread.join(); 

    return 0;
}
