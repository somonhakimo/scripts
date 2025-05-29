#!/bin/bash

home_dir="/users"
mkdir $home_dir || echo "it already exists"

echo "script $0 has process ID of: $$"

read -p "enter username: " username
read -p "enter UID for user $username: " uid
read -p "enter primary group for $username: " group

sudo useradd -u $uid -d $home_dir -g $group $username || echo "failed to create user $username -- try again"
