#!/bin/bash

website="https://guvi.in"

# Ping guvi.in and store HTTP response
http_response=$(curl -s -o /dev/null -w "%{http_code}" $website)

# Print HTTP response
echo "HTTP Response Code for $website: $http_response"

# Check if HTTP response is success or failed
if [ $http_response -eq 200 ]; then
    echo "Success: Website is up"
else
    echo "Failed: Website is not reachable"
fi