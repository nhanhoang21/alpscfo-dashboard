#!/bin/bash

set -e

source "$(dirname "$0")/config.sh"

if docker ps -a --format '{{.Names}}' | grep -Eq "^${CONTAINER_NAME}\$"; then
  echo "Removing running container"
  docker rm -f $CONTAINER_NAME
fi

docker run -d --name $CONTAINER_NAME -p $PORT:5000 $IMAGE_NAME
echo "Application running at localhost:$PORT"