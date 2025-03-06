#ifndef ORDER_HPP
#define ORDER_HPP

#include <cstdint>  

struct Order {
    uint64_t order_id;  
    bool is_buy;        
    double price;       
    uint64_t quantity;  
    uint64_t timestamp; 

    
    bool operator<(const Order &other) const {
        return price < other.price;  
    }
};

#endif
