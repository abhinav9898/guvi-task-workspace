#!/bin/bash

# Example of a for loop
for i in {1..5}; do
    echo "Number: $i"
done

# Another example using array
fruits=("apple" "banana" "orange")
for fruit in "${fruits[@]}"; do
    echo "Fruit: $fruit"
done