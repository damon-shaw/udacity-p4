#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

USER=vanthios

# Step 1:
# This is your Docker ID/path
dockerpath=$USER/udacity-p4

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run boston-predict-api\
	--image=$dockerpath\
	--port=80\
	--labels app=boston-predict-api

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward boston-predict-api 8000:80
