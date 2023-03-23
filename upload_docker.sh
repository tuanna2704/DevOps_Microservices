#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath="tuanna2704/udacity4:v1.0.1"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
sudo docker login
sudo docker tag udacity4 $dockerpath
# Step 3:
# Push image to a docker repository
sudo docker push $dockerpath