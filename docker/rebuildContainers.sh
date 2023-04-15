#!/bin/bash

# usage
# ./rebuildContainers.sh [cf admin password] [DB root password] [DB user password]
# EG:
# ./rebuildContainers.sh 12345 123 1234

clear; printf "\033[3J"
docker-compose down --remove-orphans --volumes
docker-compose build --no-cache
CF_PASSWORD=$1 MARIADB_ROOT_PASSWORD=$2 MARIADB_PASSWORD=$3 docker-compose up --force-recreate --detach
