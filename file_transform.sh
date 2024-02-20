#!/bin/bash

# Define the input and output file paths
input_file="sample.txt"
output_file="output.txt"

# Loop through each line of the input file
line_number=0
while IFS= read -r line; do
    ((line_number++))

    # Check if line contains the word "welcome"
    if grep -q -i "welcome" <<< "$line" && ((line_number >= 5)); then
        # Replace "give" with "learning" and append the modified line to the output file
        modified_line=$(sed 's/give/learning/gI' <<< "$line")
        echo "$modified_line" >> "$output_file"
    else
        # Otherwise, just append the original line to the output file
        echo "$line" >> "$output_file"
    fi
done < "$input_file"
