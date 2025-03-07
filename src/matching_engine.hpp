#ifndef MATCHING_ENGINE_HPP
#define MATCHING_ENGINE_HPP

#include "order_book.hpp" 
#include "order.hpp"       
#include <unordered_map>
#include <string>
#include <queue>
#include <mutex>
#include <thread>
#include <condition_variable>
#include <atomic>
#include "network.hpp"

class MatchingEngine {
private:
    std::unordered_map<std::string, OrderBook> order_books;
    std::queue<Order> order_queue;  
    std::mutex queue_mutex;
    std::condition_variable queue_cv;
    std::atomic<bool> running = true;
    Network network;

public:
    void process_order(const Order &order, const std::string &symbol);
    void print_order_book(const std::string &symbol);
    void start_engine(); 
    MatchingEngine(int port);
    const std::unordered_map<std::string, OrderBook>& get_order_books() const {
        return order_books;
    }
};

#endif 
