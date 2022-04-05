#! /usr/bin/env bash

aws ecr get-login-password --region us-west-2 | docker login --username AWS --password-stdin <seu-user-id>.dkr.ecr.us-west-2.amazonaws.com

docker build -t igti-repository .

docker tag igti-repository:latest <seu-user-id>.dkr.ecr.us-west-2.amazonaws.com/igti-repository:latest

docker push <seu-user-id>.dkr.ecr.us-west-2.amazonaws.com/igti-repository:latest

