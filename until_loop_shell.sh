#!/bin/bash

# Example of an until loop
number=1
until [ $number -gt 5 ]; do
    echo "Number: $number"
    ((number++))
done