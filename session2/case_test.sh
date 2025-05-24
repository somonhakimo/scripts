#!/bin/bash

cat << lala
Select an option:
1) Show date
2) List files
3) List user
4) Exit
lala

read -p "Enter a number between 1-4 (e.g., 1, 2, 3): " number

case $number in
    "1")
        echo "today's date is $(date)."
        ;;
    "2")
        echo "these are the files $(ls -l)"
        ;;
    "3")
        echo "this is a user $(whoami)."
        ;;
    "4")
        echo "GOODBYE $(exit)."
        ;;
esac
