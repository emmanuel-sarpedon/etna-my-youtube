#!/usr/bin/env bash

docker compose up -d --remove-orphans --build db.microservice encode.microservice myapi.microservice && \
docker system prune -f
