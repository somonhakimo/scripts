#!/bin/bash

# the script should:
# use curl to check the response status of the web server (e.g., http://localhost)
# if the server responds with an  http status code other than 200,
# restart the web server using systemctl restart nginx

# pseudo code

# 1. set web server name as variable
# 2. use systemctl to check status of service
#     a. if status is "active"; then
#         print "server active"
#         write server active - datetime stamp to apache_log.log
#     b. if status is not active; then
#         print "server inactive"
#         restart server
#         write server inactive - datetime stamp to a apache_log.log
#     c. else
#         print "status unknown"
#         write server status unknown - datetime stamp to apache_log.log


service="httpd"

status=$(systemctl status httpd | head -n 3 | tail -n 1 | awk -F " " '{print $2}')

if [ $status = "active" ]; then 
    echo "$service status active"
    echo "$service status active - $(date)" >> /var/www/html/apache_log.log
elif [ $status != "active" ]; then
    echo "$service status inactive"
    systemctl restart $service
    echo "$service status inactive - $(date)" >> /var/www/html/apache_log.log
fi
