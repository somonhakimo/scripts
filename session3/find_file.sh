#!/bin/bash

# Exercise 5: Simple File Checker
# Write a script that asks the user to enter a file name.
# Use if statements to:
# Check if the file exists.
# If it exists, check if the file is readable and writable.
# Print appropriate messages depending on whether the file exists or has the required permissions.
# Example Output:

# Enter a file name: myfile.txt
# File exists.
# File is readable.
# File is writable.
## pseudo code
# # 1. read -p ask a user for a file name and set var
# 2. initiate for loop iterating through all files in the current directory
# a. if $input_var = "file":
#         1. if file is readable and writible:
#         print $file is readable and writible
#         else
#             print file exits but without proper permissions
#             fi
#     else:
#     print file doesnot exits
#     fi
#   clear the screen
# done 

read -p "Enter a file name: " file
for file in *.sh; do
    if [ -f "$file" ]; then
    echo "File exists"
        

else

    echo "File does not exist"
fi
