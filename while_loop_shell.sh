#!/bin/bash

# Example of a while loop
counter=1
while [ $counter -le 5 ]; do
    echo "Count: $counter"
    ((counter++))
done