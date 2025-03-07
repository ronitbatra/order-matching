cmake_minimum_required(VERSION 3.10)
project(OrderMatchingEngine)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pthread")

add_executable(matching_engine 
    src/main.cpp
    src/order_book.cpp
    src/matching_engine.cpp
    src/network.cpp
)

add_executable(order_benchmark benchmarks/order_matching_benchmark.cpp src/matching_engine.cpp src/order_book.cpp)
add_executable(network_benchmark benchmarks/network_benchmark.cpp)
add_executable(test_order_book tests/test_order_book.cpp src/order_book.cpp)
add_executable(test_matching_engine tests/test_matching_engine.cpp src/matching_engine.cpp src/order_book.cpp)
