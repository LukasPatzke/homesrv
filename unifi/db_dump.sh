#!/bin/bash

docker exec unifi-db sh -c 'exec mongodump -d unifi --archive' > /home/lukas/srv/backup/dumps/unifi.archive
docker exec unifi-db sh -c 'exec mongodump -d unifi_stat --archive' > /home/lukas/srv/backup/dumps/unifi_stat.archive
