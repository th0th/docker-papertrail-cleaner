#!/bin/bash

if [ -z "$PAPERTRAIL_API_TOKEN" ]; then
    echo >&2 "PAPERTRAIL_API_TOKEN should be set."
fi

curl \
    --silent \
    --header "X-Papertrail-Token: $PAPERTRAIL_API_TOKEN" \
    https://papertrailapp.com/api/v1/systems.json| \
jq '.[] .name' | xargs -I {} -d '\n' sh -c 'papertrail-remove-system -s {}; echo deleted {}'
