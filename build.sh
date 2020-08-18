#!/bin/bash

USERNAME=backface
IMAGE=nginx-rtmp

docker build --network=host -t $USERNAME/$IMAGE:latest .

