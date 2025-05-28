#!/bin/bash

echo "give the folders and files name: "

mkdir $1
touch $1/$2
chmod 744 $1/$2

# these are called positional parameters