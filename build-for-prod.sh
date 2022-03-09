#!/bin/sh
docker-compose -f docker-compose.yml -f docker-compose.build.yml --env-file prod.env build