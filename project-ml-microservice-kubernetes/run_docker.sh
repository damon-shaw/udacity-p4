#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
# Invoke the `build` command, specifying this directory as the place to find an applicable
# Dockerfile. Assign a tag to name the resultant image so we can easily reference it later.
docker build . --tag=boston-predict-api

# Step 2: 
# List docker images
# Use the `ls` command to list images. Below are some more advanced options that do more specific
# kinds of printing. They can be uncommented to use them instead of the very simple `image ls`.
docker image ls

# Step 3: 
# Run flask app
# Invoke the `run` command, use the `-p` flag to bind port 8080 on the local machine to the exposed
# port 80 on the image. Specify which image to run by recalling the tag we assigned to the image
# above.
docker run -p 8080:80 boston-predict-api
