#!/bin/bash

if [ "$1" = "--reset" ]; then
    echo "Removing old docker image..."
    docker rmi jkutkut/docker4java
fi

echo "Building docker image..."
docker build -t jkutkut/docker4java .