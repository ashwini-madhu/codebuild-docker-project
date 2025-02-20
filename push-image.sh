#!/bin/bash

#fail on any error
set -eu

#login to docker hub account
docker login --username $DOCKER_USERNAME --password $DOCKER_PASSWORD

#use the docker tag command to give the image a new name
docker tag $IMAGE_TAG $DOCKER_USERNAME/$DOCKER_REPO_NAME

#push the image to your docker hub repository
docker push $DOCKER_USERNAME/$DOCKER_REPO_NAME