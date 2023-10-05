#!/bin/bash

# Build the Docker image
docker-compose build

# Run a container from the built image
docker-compose up
