#!/bin/bash

# START

# Step 1 - Check if apache is installed in our system
#     IF YES
#     Continue
#     IF NO
#         Install apache

# Step 2 - Setup apache
#     Start apache
#     Enable apache
#     Check if apache is running
#     IF status is running
#         print "Apache Status Active"
#         redirect Message + Date & Time to apache_log.log 
#     IF status not running
#         print "Apache failure"
#         redirect Error + Date & Time to apache_error.log 

# Step 3 - Setup index.html for public view
#     Create index.html under apache httpd directory
#     Insert HTML content into index.html
#     Restart Apache

# END

test=$(sudo systemctl status apache2)
if [ $? -ne 0 ]; then
    apt install apache2 -y
fi

sudo systemctl start apache2
sudo systemctl enable apache2

status=$(systemctl status apache2 | head -n 3 | tail -n 1 | awk -F " " '{ print $2 }')

if [ $status = "active" ]; then
    echo "Apache is Active - $(date)" | sudo tee /var/www/html/apache_log.log
else
    echo "Apache is inactive = $(date)" | sudo tee /var/www/html/apache_error.log
fi

sudo tee /var/www/html/index.html << html 
<!DOCTYPE html>
<html>
<head>
  <style>
    body { font-family: monospace; background: #f0f0f0; padding: 1em; }
    pre { background: white; padding: 1em; border: 1px solid #ccc; }
  </style>
</head>
<body>
  <h2>Apache Status</h2>
  <pre>
$status
  </pre>
</body>
</html>
html

sudo systemctl restart apache2
