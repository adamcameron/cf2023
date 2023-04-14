#!/bin/bash

# usage
# ./restartContainers.sh [cf admin password] [DB root password] [DB user password]
# use same passwords as when initially calling rebuildContainers.sh

# EG:
# ./restartContainers.sh 12345 123 1234

clear; printf "\033[3J"
docker-compose stop
MARIADB_ROOT_PASSWORD=$2 MARIADB_PASSWORD=$3 docker-compose up --detach mariadb
CF_PASSWORD=$1 MARIADB_PASSWORD=$3 docker-compose up --detach cf2021
