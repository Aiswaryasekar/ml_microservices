#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=aiswaryasekar/ml_microservices
# Step 2
# Run the Docker Hub container with kubernetes

kubectl run mcrspredict --port=9000 --image=$dockerpath
# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host
kubectl port-forward pods/mcrspredict 9000:8000

