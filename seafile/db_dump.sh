#/bin/bash

docker exec -t seafile-mysql sh -c 'exec mysqldump -p"$MYSQL_ROOT_PASSWORD" --opt ccnet_db' > /home/lukas/srv/backup/dumps/seafile_ccnet-db_dump.sql
docker exec -t seafile-mysql sh -c 'exec mysqldump -p"$MYSQL_ROOT_PASSWORD" --opt seafile_db' > /home/lukas/srv/backup/dumps/seafile_seafile-db_dump.sql
docker exec -t seafile-mysql sh -c 'exec mysqldump -p"$MYSQL_ROOT_PASSWORD" --opt seahub_db' > /home/lukas/srv/backup/dumps/seafile_seahub-db_dump.sql
