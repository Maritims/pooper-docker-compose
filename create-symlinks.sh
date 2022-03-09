#!/bin/sh
ln -s pooper-docker-compose/docker-compose.override.yml docker-compose.override.yml
ln -s pooper-docker-compose/docker-compose.build.yml docker-compose.build.yml
ln -s pooper-docker-compose/docker-compose.prod.yml docker-compose.prod.yml
ln -s pooper-docker-compose/build-for-prod.sh build-for-prod.sh
ln -s pooper-docker-compose/prod.env prod.env