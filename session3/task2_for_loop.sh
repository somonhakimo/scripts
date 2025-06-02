#!/bin/bash

# write a script that copies all .sh files in a directory 
# by appending "-backup" to their names.
# and move them into /tmp folder
# use a for loop to go through each .sh file and copy and move them.

for i in *.txt; do
    echo "targeted script: $i
    cp $i /tmp/$i-backpus
    sleep 1
done
