#!/bin/bash

url="https://hooks.slack.com/services/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"

## Example 1:
curl -X POST $url \
  -H 'Content-type: application/json' \
  -d '{"text": "Hello Everyone"}'