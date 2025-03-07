# Order Matching Engine

A **high-performance order matching engine** built in **C++** that supports limit orders, multi-threaded execution, and UDP-based order intake. This engine simulates a real-time financial trading system by efficiently processing buy and sell orders.

---

## Features
- **Limit Order Matching:** Supports limit buy and sell orders.
- **Multi-threaded Processing:** Handles multiple orders concurrently.
- **UDP-Based Order Intake:** Receives orders over a network using UDP.
- **Persistent Order Book:** Stores and reloads orders from disk.
- **Performance Benchmarks:** Provides tools to measure system efficiency.

---

## Project Structure

```
order-matching/
├── benchmarks/         # Performance tests
│   ├── order_matching_benchmark.cpp
│   └── network_benchmark.cpp
├── docs/               # Documentation
│   ├── api.md
│   └── design.md
├── scripts/            # Helper scripts
│   ├── start_engine.sh
│   └── send_orders.sh
├── src/                # Core engine source code
│   ├── order.hpp
│   ├── order_book.hpp
│   ├── matching_engine.hpp
│   ├── network.hpp
│   ├── order_book.cpp
│   ├── matching_engine.cpp
│   ├── network.cpp
│   └── main.cpp
├── tests/              # Unit tests
│   ├── test_order_book.cpp
│   └── test_matching_engine.cpp
├── .gitignore
├── CMakeLists.txt
└── README.md
```

---

## Installation

### Prerequisites
- C++17+ Compiler
- CMake (e.g., install via `sudo apt install cmake` on Linux or via Homebrew on macOS)
- Netcat (for sending UDP test orders)

### Build the Project
```sh
mkdir build && cd build
cmake ..
make
```

---

## Usage

### 1. Start the Matching Engine
```sh
./matching_engine
```
*Expected output:*
```
Matching Engine running on port 8080...
```

### 2. Send Buy/Sell Orders via UDP
In a separate terminal, run:
```sh
echo "buy 100.5 10" | nc -u -w1 127.0.0.1 8080
echo "sell 100.5 10" | nc -u -w1 127.0.0.1 8080
```

### 3. Check the Order Book
The engine will output messages such as:
```
Trade executed: 10 units at price 100.5
No open orders for symbol: AAPL
```

---

## Performance Benchmarking

### Order Matching Benchmark
```sh
./order_benchmark
```
*Example output:*
```
Processed 100000 orders in 0.56 seconds
```

### Network Benchmark
```sh
./network_benchmark
```
*Example output:*
```
Sent 10000 UDP orders in 1.23 seconds
```

---

## Testing

Run unit tests to verify functionality:
```sh
./test_order_book
./test_matching_engine
```

---

## API Reference

For detailed information on the classes, functions, and how to integrate with the Order Matching Engine, please see the [API Documentation](docs/api.md).

---

## Architecture Overview

### System Components
1. **Order:** Represents individual buy or sell orders.
2. **OrderBook:** Manages orders for a specific financial instrument.
3. **MatchingEngine:** Oversees multiple `OrderBook` instances and processes incoming orders.
4. **Network:** Handles the reception of orders via UDP.

### Sequence Diagram
```plaintext
Client          Network          MatchingEngine          OrderBook
   |                |                   |                    |
   | -- Order -->   |                   |                    |
   |                | -- Parse Order -->|                    |
   |                |                   | -- Route Order --> |
   |                |                   |                    | -- Match Order
   |                |                   |                    |
```
For more details, see [`docs/design.md`](docs/design.md).

---

## License

MIT License. Feel free to modify and use.

---

## 👤 Author
- **Your Name** – [GitHub Profile](https://github.com/ronitbatra)
- **Email:** xfb7hj@virginia.edu

