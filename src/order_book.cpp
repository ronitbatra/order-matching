#include "order_book.hpp"
#include <iostream>

void OrderBook::add_order(const Order &order) {
    if (order.is_buy)
        buy_orders.insert(order);
    else
        sell_orders.insert(order);

    match_orders(); 
}

void OrderBook::match_orders() {
    while (!buy_orders.empty() && !sell_orders.empty()) {
        auto best_buy = buy_orders.begin();
        auto best_sell = sell_orders.begin();

        if (best_buy->price >= best_sell->price) {
            uint64_t trade_quantity = std::min(best_buy->quantity, best_sell->quantity);
            std::cout << "Trade executed: " << trade_quantity << " units at price " << best_sell->price << std::endl;

            
            Order updated_buy = *best_buy;
            Order updated_sell = *best_sell;
            updated_buy.quantity -= trade_quantity;
            updated_sell.quantity -= trade_quantity;

            buy_orders.erase(best_buy);
            sell_orders.erase(best_sell);

            if (updated_buy.quantity > 0) buy_orders.insert(updated_buy);
            if (updated_sell.quantity > 0) sell_orders.insert(updated_sell);
        } else {
            break;  
        }
    }
}
