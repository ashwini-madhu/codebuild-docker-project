#!/bin/bash

#fail on any error
set -eu

#login to docker hub account
cat ~/my_password.txt | sudo docker login --username

#use the docker tag command to give the image a new name
sudo docker tag techmax 

#push the image to your docker hub repository
sudo docker push 