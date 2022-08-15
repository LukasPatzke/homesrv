#/bin/bash
# Remove all old backups
rm -f /home/lukas/srv/smarthome/backup/*

docker exec -t sensor_influxdb sh -c 'influx backup /backup -t "$INFLUXDB_ADMIN_PASSWORD"'
