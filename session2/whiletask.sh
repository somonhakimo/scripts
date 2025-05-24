#!/bin/bash

# Write a script that starts from a user-provided number and counts down to 0.
# Use a while loop to print the numbers until the countdown finishes.
# After the countdown, display "Time's up!"

# Enter a number to start countdown: 5
# 5
# 4
# 3
# 2
# 1
# 0
# Time's up!

read -p "Enter a number to start countdown: " n

while [ $n -ge 0 ]; do
    echo "Count: $n"
    ((n--))
done