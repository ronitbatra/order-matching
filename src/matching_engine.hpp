#ifndef MATCHING_ENGINE_HPP
#define MATCHING_ENGINE_HPP

#include "order_book.hpp"
#include <unordered_map>
#include <string>
#include <mutex>

class MatchingEngine {
private:
    std::unordered_map<std::string, OrderBook> order_books;
    std::mutex engine_mutex; 

public:
    void process_order(const Order &order, const std::string &symbol);
    void print_order_book(const std::string &symbol);
};

#endif // MATCHING_ENGINE_HPP
