#/bin/bash

docker exec -t paperless-db pg_dumpall -c -U paperless > /home/lukas/srv/backup/dumps/paperless_paperless-db_dump.sql

