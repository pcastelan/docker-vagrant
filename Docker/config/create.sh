#!/usr/bin/env bash

#echo 'Update repository'
#echo 'http://dl-cdn.alpinelinux.org/alpine/edge/community' >> /etc/apk/repositories
apk update
echo 'Install Docker'
apk add docker
echo 'Add docker to boot'
rc-update add docker boot
echo 'Start docker'
service docker start
echo 'Install PIP'
apk update
apk add py-pip
echo 'Install Dependencies'
apk add python-dev libffi-dev openssl-dev gcc libc-dev make
echo 'Update PIP'
pip install --upgrade pip
echo 'Install Docker Compose'
pip install docker-compose
