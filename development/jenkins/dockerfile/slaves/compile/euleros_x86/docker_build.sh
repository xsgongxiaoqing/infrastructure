#!/bin/bash

# Global parameter
IMAGE_VERSION="0.0.2"
WORKSPACE=$(dirname "${BASH_SOURCE-$0}")
WORKSPACE=$(cd -P "${WORKSPACE}"; pwd -P)

# Install docker
yum install -y docker-engine

# Docker build
docker build -t mindspore_euleros_x86:${IMAGE_VERSION} ${WORKSPACE}

# Docker push
docker tag mindspore_euleros_x86:${IMAGE_VERSION} swr.cn-north-4.myhuaweicloud.com/mindspore/mindspore_euleros_x86:${IMAGE_VERSION}
docker push swr.cn-north-4.myhuaweicloud.com/mindspore/mindspore_euleros_x86:${IMAGE_VERSION}
