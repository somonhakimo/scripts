#!/bin/bash

# take a backup of our apache (website content)
# 1. archive /var/www/html folder under /backups with datetime stamp
# 2. list all backups that are older than 1 month & delete them
# 3. setup cront to excute our script daily. 



backup_dir="/backups"
if [ ! -d "$backup_dir" ]; then
    sudo mkdir -p "$backup_dir"
fi


timestamp=$(date)
backup_file="apache_backup_$timestamp.tar.gz"

sudo tar -czf "$backup_dir/$backup_file" /var/www/html
sudo find "$backup_dir" -type f -name "apache_backup_*.tar.gz" -mtime +30 -exec rm {} \;

echo "Backup created at $timestamp and old backups cleaned."
