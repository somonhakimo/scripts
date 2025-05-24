#!/bin/bash

# Enter numbers (space-separated): 3 4 5 6 7
# 3 is odd
# 4 is even
# 5 is odd
# 6 is even
# 7 is odd

# pseudocode
# for num in $@; do
#     if remainder of num by 2 is 0; then
#         print even
#     else  
#         print odd
#     fi
# done

read -p "Enter numbers (space-seperated): " num

for i in $num; do
    if [[ $((i%2)) = 0 ]]; then
        echo "$i is even"
    else
        echo "$i is odd"
    fi
done

