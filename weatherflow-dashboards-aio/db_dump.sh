#/bin/bash

docker exec -t wxfdashboardsaio_influxdb influxd backup -portable /backup
