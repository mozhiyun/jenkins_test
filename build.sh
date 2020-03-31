#!/bin/bash
IMAGE="jenkins_test:latest"
# 清理
docker stop jenkins_test
docker rmi $IMAGE
# 编译镜像
docker build -t $IMAGE .
docker run -d --name=jenkins_test --rm -p 8081:80 $IMAGE