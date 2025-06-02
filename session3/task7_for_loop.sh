#!/bin/bash

# for num in $@; do
#     if remainder of num by  2 is 0; then ## ex. (($num % 2))
#         print even
#     else
#         print odd
#     fi 
# done

for num in $@; do
    if [ $((num % 2)) = "0"]; then
        echo even
    else
        echo add
    fi
done
