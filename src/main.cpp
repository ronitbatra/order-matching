#include "order_book.hpp"

int main() {
    OrderBook book;

    // Add some test orders
    Order buy1 = {1, true, 101.0, 10, 1};
    Order sell1 = {2, false, 100.0, 5, 2};
    Order sell2 = {3, false, 99.5, 5, 3};

    book.add_order(buy1);
    book.add_order(sell1);
    book.add_order(sell2);

    return 0;
}
