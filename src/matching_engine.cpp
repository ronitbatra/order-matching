#include "matching_engine.hpp"
#include <iostream>
#include <sstream>

MatchingEngine::MatchingEngine(int port) : running(true), network(port) {
    network.set_order_callback([this](const std::string& order_data) {
        std::istringstream iss(order_data);
        std::string type;
        double price;
        int quantity;

        if (iss >> type >> price >> quantity) {
            bool is_buy = (type == "buy");
            Order new_order = {0, is_buy, price, static_cast<uint64_t>(quantity), 0};
            process_order(new_order, "AAPL"); 
        }
    });
}

void MatchingEngine::process_order(const Order &order, const std::string &symbol) {
    std::lock_guard<std::mutex> lock(queue_mutex);

    if (order_books.find(symbol) == order_books.end()) {
        order_books[symbol] = OrderBook(); 
    }

    order_books[symbol].add_order(order);
}

void MatchingEngine::start_engine() {
    std::thread net_thread([this]() {
    network.start();
    });
    net_thread.detach();

    
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

