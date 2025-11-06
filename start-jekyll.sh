#!/bin/bash

# Check if Docker is running
if ! docker info > /dev/null 2>&1; then
    echo "Starting Docker Desktop..."
    open -a Docker
    echo "Waiting for Docker to start..."
    sleep 10
    
    # Wait for Docker to be ready
    while ! docker info > /dev/null 2>&1; do
        echo "Still waiting for Docker..."
        sleep 5
    done
fi

echo "Docker is running! Starting Jekyll..."
docker run --rm -v "$PWD":/srv/jekyll -p 4000:4000 jekyll/jekyll:builder jekyll serve --host 0.0.0.0 --force_polling
