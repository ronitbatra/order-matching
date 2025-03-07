#!/bin/bash
for i in {1..100}; do
    echo "buy 100.5 10" | nc -u -w1 127.0.0.1 8080
done
