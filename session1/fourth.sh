#!/bin/bash

read -p "enter the folder name: " folder
read -p "enter the script name: " script

mkdir $folder
touch $folder/$script
chmod 744 $folder/$script

