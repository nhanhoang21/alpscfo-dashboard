#!/bin/bash
set -e
source "$(dirname "$0")/config.sh"

if docker ps -a --format '{{.Names}}' | grep -Eq "^${CONTAINER_NAME}\$"; then
  echo "Removing running container"
  docker rm -f $CONTAINER_NAME
fi
