#!/bin/bash

IMAGE_NAME="your-docker-image-name"
REGISTRY="your-registry-url"

# Check if the latest commit has been deployed
latest_commit=$(git rev-parse HEAD)
deployed_commit=$(curl -s "${REGISTRY}/v2/${IMAGE_NAME}/manifests/latest" | jq -r '.config.digest' | cut -d ':' -f 2)

if [ "$latest_commit" != "$deployed_commit" ]; then
    echo "New version of the image is available, deploying it now ..."
    # Run your deployment commands here
else
    echo "No new version of the image is available."
fi
