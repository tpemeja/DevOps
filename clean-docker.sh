#!/bin/bash

# Remove all stopped containers
docker container prune -f

# Remove all dangling (unused) images
docker image prune -f

# Remove all unused volumes
docker volume prune -f

# Remove all unused networks
docker network prune -f

# Check if the argument "-full" is provided
if [[ "$1" == "--full" ]]; then
  # Optionally, remove all cached images (use with caution, as it will remove all images not currently in use)
  docker rmi $(docker images -q) -f
fi