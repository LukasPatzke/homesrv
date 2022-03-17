#/bin/bash

docker exec -t keycloak_db pg_dumpall -c -U keycloak > /home/lukas/srv/backup/dumps/keycloak_db_dump.sql
