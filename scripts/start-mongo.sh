#!/bin/sh

docker run \
	--name mob-mongo \
	-v /home/fmob/mongo/data:/data/db \
	--restart=always \
	-d \
	mongo@3.2.0
