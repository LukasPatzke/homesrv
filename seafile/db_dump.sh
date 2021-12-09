#/bin/bash

docker exec -t seafile-mysql sh -c 'exec mysqldump -p"$MYSQL_ROOT_PASSWORD" --opt ccnet-db' > /home/lukas/srv/backup/dumps/seafile_ccnet-db_dump.sql
docker exec -t seafile-mysql sh -c 'exec mysqldump -p"$MYSQL_ROOT_PASSWORD" --opt seafile-db' > /home/lukas/srv/backup/dumps/seafile_seafile-db_dump.sql
docker exec -t seafile-mysql sh -c 'exec mysqldump -p"$MYSQL_ROOT_PASSWORD" --opt seahub-db' > /home/lukas/srv/backup/dumps/seafile_seahub-db_dump.sql
