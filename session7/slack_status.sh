#!/bin/bash

status=$(curl -s  https://slack-status.com/api/v2.0.0/current | jq -r .status)

if [ $status != ok ]; then
    echo "slack in not working"
else
    echo "slack is working fine"
fi
