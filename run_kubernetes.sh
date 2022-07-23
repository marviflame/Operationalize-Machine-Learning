#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
dockerpath=marviflame89/udacityproject4:v2.10.9

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacityproject4 --image=marviflame89/udacityproject4:v2.10.9 --port=80 --labels app=udacityproject4


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward udacityproject4 8000:80