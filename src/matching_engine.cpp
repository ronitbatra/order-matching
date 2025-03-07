#include "matching_engine.hpp"
#include <iostream>

void MatchingEngine::process_order(const Order &order, const std::string &symbol) {
    std::lock_guard<std::mutex> lock(queue_mutex);

    if (order_books.find(symbol) == order_books.end()) {
        order_books[symbol] = OrderBook(); 
    }

    order_books[symbol].add_order(order);
}

void MatchingEngine::start_engine() {
    std::thread order_processor([&]() {
        while (running || !order_queue.empty()) {  
            std::unique_lock<std::mutex> lock(queue_mutex);
            queue_cv.wait(lock, [&]() { return !order_queue.empty() || !running; });

            while (!order_queue.empty()) {
                Order order = order_queue.front();
                order_queue.pop();
                process_order(order, "AAPL");
            }
        }
    });

    order_processor.detach();
}



void MatchingEngine::print_order_book(const std::string &symbol) {
    std::lock_guard<std::mutex> lock(queue_mutex);

    if (order_books.find(symbol) == order_books.end() || order_books[symbol].is_empty()) {
        std::cout << "No open orders for symbol: " << symbol << std::endl;
        return;
    }

    std::cout << "Order book for " << symbol << ":\n";
    order_books[symbol].print_orders();
}

