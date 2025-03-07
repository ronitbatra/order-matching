#ifndef ORDER_BOOK_HPP
#define ORDER_BOOK_HPP

#include "order.hpp"
#include <set>  
#include <iostream>

class OrderBook {
private:
    struct CompareBuy {
        bool operator()(const Order &a, const Order &b) const {
            return a.price > b.price || (a.price == b.price && a.timestamp < b.timestamp);
        }
    };

    struct CompareSell {
        bool operator()(const Order &a, const Order &b) const {
            return a.price < b.price || (a.price == b.price && a.timestamp < b.timestamp);
        }
    };

    std::set<Order, CompareBuy> buy_orders;   
    std::set<Order, CompareSell> sell_orders; 

public:
    void add_order(const Order &order);
    void match_orders();
    bool is_empty() const {
    return buy_orders.empty() && sell_orders.empty();
}
    void print_orders() const {
        std::cout << "Buy Orders (sorted highest price first):\n";
        for (const auto &ord : buy_orders) {
            std::cout << "  Order ID: " << ord.order_id
                      << ", Price: " << ord.price
                      << ", Quantity: " << ord.quantity
                      << ", Timestamp: " << ord.timestamp << "\n";
        }

        std::cout << "Sell Orders (sorted lowest price first):\n";
        for (const auto &ord : sell_orders) {
            std::cout << "  Order ID: " << ord.order_id
                      << ", Price: " << ord.price
                      << ", Quantity: " << ord.quantity
                      << ", Timestamp: " << ord.timestamp << "\n";
        }
    }

};

#endif 
