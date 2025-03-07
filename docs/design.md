
### **🔹 `docs/design.md`**

**Purpose:** Explain the architectural and design decisions behind the order-matching engine, providing insights into its structure and functionality.

**Contents:**

```markdown
# Design Document

## Introduction
This document outlines the design and architecture of the Order Matching Engine, detailing the system's components, their interactions, and the rationale behind design decisions.

## System Overview
The Order Matching Engine is designed to handle high-frequency trading operations, matching buy and sell orders efficiently. It comprises the following primary components:

1. **Order**: Represents individual buy or sell orders.
2. **OrderBook**: Manages orders for a specific financial instrument, facilitating matching and execution.
3. **MatchingEngine**: Oversees multiple `OrderBook` instances and processes incoming orders.
4. **Network**: Handles the reception of orders via UDP, enabling real-time order intake.

## Detailed Component Design

### 1. Order
- **Structure:** Contains attributes such as `order_id`, `is_buy`, `price`, `quantity`, and `timestamp`.
- **Purpose:** Encapsulates all necessary information about an order to facilitate processing and matching.

### 2. OrderBook
- **Data Structures:** Utilizes two priority queues:
  - **Buy Orders:** Max-heap to prioritize higher-priced buy orders.
  - **Sell Orders:** Min-heap to prioritize lower-priced sell orders.
- **Matching Logic:** When a new order is added:
  - **Buy Order:** Matches against the lowest-priced sell orders.
  - **Sell Order:** Matches against the highest-priced buy orders.
- **Order Storage:** Pending orders that cannot be immediately matched are stored in their respective queues.

### 3. MatchingEngine
- **Responsibilities:**
  - Maintains a collection of `OrderBook` instances, each corresponding to a different financial instrument.
  - Processes incoming orders by routing them to the appropriate `OrderBook`.
  - Interfaces with the `Network` component to receive orders.
- **Concurrency:** Implements thread-safe mechanisms using mutexes and condition variables to handle simultaneous order processing and network communication.

### 4. Network
- **Protocol:** Uses UDP for low-latency order transmission.
- **Functionality:** Listens for incoming order messages, parses them, and invokes the `MatchingEngine`'s order processing function.
- **Design Considerations:** Ensures non-blocking I/O operations to maintain system responsiveness.

## Sequence Diagram

```plaintext
Client          Network          MatchingEngine          OrderBook
   |                |                   |                    |
   | -- Order -->   |                   |                    |
   |                | -- Parse Order -->|                    |
   |                |                   | -- Route Order --> |
   |                |                   |                    | -- Match Order
   |                |                   |                    |
