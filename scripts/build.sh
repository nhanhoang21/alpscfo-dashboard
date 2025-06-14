#!/bin/bash

set -e

source "$(dirname "$0")/config.sh"


docker build -t $IMAGE_NAME .
echo "Building $IMAGE_NAME successful"
