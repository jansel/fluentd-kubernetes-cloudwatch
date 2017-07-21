#!/bin/bash
set -ex
: ${IMAGE_NAME:=jansel/fluentd-cloudwatch:v2017.04.14b}
docker build -t $IMAGE_NAME .
docker push $IMAGE_NAME
