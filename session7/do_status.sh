#!/bin/bash

status=$(curl -s https://status.digitalocean.com/api/v2/status.json | jq -r .status.indicator)

if [[ $status != "none" ]]; then
    echo "droplet is in danger"
else
    echo "droplet is healthy or actually digitalocean is healthy"
fi


# with this script we see that whether a digital ocean servers or website is working without any issue,
# if they are working it means our droplet is working well too.