#include "../src/order_book.hpp"
#include <cassert>

int main() {
    OrderBook ob;
    Order buy_order = {1, true, 100.0, 10, 1};
    Order sell_order = {2, false, 100.0, 10, 2};

    ob.add_order(buy_order);
    ob.add_order(sell_order);

    assert(ob.is_empty() == true); // Orders should match and clear
    return 0;
}
