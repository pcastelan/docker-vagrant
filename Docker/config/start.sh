#!/usr/bin/env bash

echo 'Start docker'
service docker start
cd /mnt/docker/laradock/ && sudo docker-compose up -d apache2 redis redis-webui elasticsearch mysql