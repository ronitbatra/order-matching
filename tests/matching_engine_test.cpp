#include "../src/matching_engine.hpp"
#include <cassert>

int main() {
    MatchingEngine engine(8080);
    Order buy_order = {1, true, 100.0, 10, 1};
    engine.process_order(buy_order, "AAPL");

    assert(engine.get_order_books().at("AAPL").is_empty() == false);
    return 0;
}
