#/bin/bash
# Remove all old backups
rm -f /home/lukas/srv/weatherflow-dashboards-aio/backup/*

docker exec -t wxfdashboardsaio_influxdb influxd backup -portable /backup
