#!/bin/bash

# Goal: Check the status of a list of common services and write the result to a timestamped log file.

# Services to check: apache2, mysql, ssh, cron

# pseudocode:

# Create a timestamped log file
# Define a list of services
# For each service:
#    Check its status using systemctl
#    If active → log "service is running"
#    Else → log "service is down"

