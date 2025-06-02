#!/bin/bash

for user in $(cat users.txt); do 
    if [ $user = 'kris' ]; then
        echo "kris has been found"
    fi
done
