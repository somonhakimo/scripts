#!/bin/bash

# take a backup of our apache (website content)
# psuedo code
# 1. archive /var/www/html folder under /backups with datetime stamp
# 2. list all backups that are older than 1 month & delete them
# 3. setup cront to excute our script daily. 

ta