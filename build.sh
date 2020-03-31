#!/bin/bash
​
IMAGE="jenkins_test:latest"
​
# 编译镜像
docker build -t $IMAGE .
​
docker stop jenkins_test
​
docker run -d --name=jenkins_test --rm -p 8081:80 $IMAGE
​
# 清理
docker rmi $IMAGE