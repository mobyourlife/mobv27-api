#!/bin/sh

docker rm -f mobv27-api

docker rmi -f mobv27-api

docker build -t mobv27-api .

docker run \
	--name mobv27-api \
	--restart=always \
	--link mob-mongo:db \
	-d \
	mobv27-api
