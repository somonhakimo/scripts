#!/bin/bash

# append the current date and time to a file called /var/www/html/logs.txt using >> (append red)
# run the script multiple times to see the log grow with each run.

result=$(date)
echo "current date & time: $result" >> /tmp/logs.txt