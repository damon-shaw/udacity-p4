#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

USER_ID=vanthios

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=$USER_ID/udacity-p4

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login -u $USER_ID
docker tag boston-predict-api $dockerpath

# Step 3:
# Push image to a docker repository
docker push $dockerpath
