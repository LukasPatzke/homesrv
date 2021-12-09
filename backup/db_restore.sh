#/bin/bash

cat /home/lukas/srv/backup/dumps/backup_postgres_dump.sql | docker exec -i backup-test-postgres psql -U backup -d backup
