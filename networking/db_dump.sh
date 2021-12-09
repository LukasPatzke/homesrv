#/bin/bash

docker exec -t keycloak-db pg_dumpall -c -U keycloak > /home/lukas/srv/backup/dumps/networking_keycloak-db_dump.sql
docker exec -t kong-db pg_dumpall -c -U kong > /home/lukas/srv/backup/dumps/networking_kong-db_dump.sql
