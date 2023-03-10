#!/bin/bash

# usage
# ./rebuildContainers.sh [cf admin password]
# EG:
# ./rebuildContainers.sh 12345

clear; printf "\033[3J"
docker compose down --remove-orphans --volumes
docker compose build --no-cache
CF_PASSWORD=$1 docker compose up --force-recreate --detach
