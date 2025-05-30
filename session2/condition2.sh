#!/bin/bash

age=$1

if [ -z $1 ]; then  # if the length of $1 is zero then it true, or it is true if length of $1 is zero
    read -p "please enter your age: " age
fi
echo $age

if [ $age -lt 21 ]; then
    echo "you are too young"
    echo "come back when you're 21"
    exit

elif [ $age -ge 65 ]; then
    read -p "enter your name: " name

else
    read -p "enter your name: " name
    read -p "enter your DOB: " dob
    read -p "what shcool did you attend" school
fi

echo "welcome to___"