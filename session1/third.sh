#!/bin/bash

echo "hello world i am learning bash"

read -p "Enter folder name: " folder

mkdir $folder
touch $folder/script.sh
chmod 744 $folder/script.sh.
 

# with read -p command we need to give input after running the script