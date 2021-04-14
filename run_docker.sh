#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker image build -t microservicesml:1.1 .

# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run flask app
docker container run --publish 9000:8000 --name microsml microservicesml:1.1
