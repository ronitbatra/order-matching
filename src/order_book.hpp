#ifndef ORDER_BOOK_HPP
#define ORDER_BOOK_HPP

#include "order.hpp"
#include <set>  

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
};

#endif 
