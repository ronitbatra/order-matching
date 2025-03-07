# API Documentation

## Overview
This document provides detailed information on the interfaces and classes available in the Order Matching Engine, enabling developers to integrate and interact with the system effectively.

## Classes and Methods

### 1. `Order`
Represents an individual order in the system.

- **Attributes:**
  - `uint64_t order_id`: Unique identifier for the order.
  - `bool is_buy`: Indicates if the order is a buy (`true`) or sell (`false`).
  - `double price`: The price at which the order is placed.
  - `uint64_t quantity`: The number of units for the order.
  - `uint64_t timestamp`: The time the order was created.

### 2. `OrderBook`
Manages and matches orders for a specific financial instrument.

- **Methods:**
  - `void add_order(const Order& order)`: Adds a new order to the book and attempts to match it.
  - `void print_orders() const`: Displays all current orders in the book.
  - `bool is_empty() const`: Checks if the order book has no pending orders.

### 3. `MatchingEngine`
Coordinates multiple `OrderBook` instances and handles incoming orders.

- **Constructor:**
  - `MatchingEngine(int port)`: Initializes the engine and sets up network communication on the specified port.

- **Methods:**
  - `void process_order(const Order& order, const std::string& symbol)`: Processes and routes the order to the appropriate order book.
  - `void print_order_book(const std::string& symbol)`: Displays the current state of the order book for the given symbol.
  - `void start_engine()`: Initiates the engine's main operations, including network listening and order processing.

### 4. `Network`
Handles network communications, specifically receiving orders via UDP.

- **Constructor:**
  - `Network(int port)`: Sets up a UDP socket on the specified port.

- **Methods:**
  - `void set_order_callback(std::function<void(const std::string&)> callback)`: Registers a callback function to handle incoming order data.
  - `void start()`: Begins listening for incoming UDP messages and invokes the callback upon receipt.

## Usage Example

```cpp
#include "matching_engine.hpp"

int main() {
    int port = 8080;
    MatchingEngine engine(port);
    engine.start_engine();

    // Example order
    Order buy_order = {1, true, 100.0, 10, 1};
    engine.process_order(buy_order, "AAPL");

    engine.print_order_book("AAPL");

    return 0;
}
