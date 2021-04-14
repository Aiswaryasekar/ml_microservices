#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=aiswaryasekar/ml_microservices
# Step 2:  
# Authenticate & tag
#echo "Docker ID and Image: $dockerpath"
export DOCKER_ID_USER="aiswaryasekar"
docker login
docker tag microservicesml:1.1 $DOCKER_ID_USER/ml_microservices
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push $dockerpath