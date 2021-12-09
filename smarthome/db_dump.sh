#/bin/bash

docker exec -t sensor_influxdb sh -c 'influx backup /backup -t "$INFLUXDB_ADMIN_PASSWORD"'
