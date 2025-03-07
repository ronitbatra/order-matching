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

add_executable(order_benchmark 
    benchmarks/order_matching_benchmark.cpp
    src/matching_engine.cpp
    src/order_book.cpp
    src/network.cpp 
)

add_executable(network_benchmark 
    benchmarks/network_benchmark.cpp
    src/network.cpp 
)

add_executable(order_book_test 
    tests/order_book_test.cpp
    src/order_book.cpp
)

add_executable(matching_engine_test 
    tests/matching_engine_test.cpp
    src/matching_engine.cpp
    src/order_book.cpp
    src/network.cpp 
)
