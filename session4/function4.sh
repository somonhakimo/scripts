#!/bin/bash

_create_user() {
    read -p "Enter username for new user: " username
    useradd $username -p password123haha
    echo "user $username created successfully - $(date)" >> /var/log/userlogs.log
}

_delete_user() {
    read -p "Enter username to delete: " username
    userdel $username
     echo "user $username deleted successfully - $(date)" >> /var/log/userlogs.log
}

read -p "do you want to 'create' or 'delete' user? :" input

if [ $input = "create" ]; then
    _create_user

elif [ $input = "delete" ]; then
    _delete_user
else
    echo "invalid option; try again"
    exit
fi