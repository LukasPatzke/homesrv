#/bin/bash

docker exec -t kong-db pg_dumpall -c -U kong > /home/lukas/srv/backup/dumps/networking_kong-db_dump.sql
