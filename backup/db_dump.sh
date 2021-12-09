#/bin/bash

docker exec -t backup-test-postgres pg_dumpall -c -U backup > /home/lukas/srv/backup/dumps/backup_postgres_dump.sql

docker exec -t backup-test-mysql sh -c 'exec mysqldump -p"$MYSQL_ROOT_PASSWORD" --opt test' > /home/lukas/srv/backup/dumps/backup_mysql_dump.sql
