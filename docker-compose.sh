#!/usr/bin/env bash

docker compose up -d --remove-orphans --build db.service encode.service lapi.service && \
docker system prune -f
