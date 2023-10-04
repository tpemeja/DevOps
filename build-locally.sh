#!/bin/bash

# Build the Docker image
docker-compose -f docker-compose.yml build

# Run a container from the built image
docker-compose up
