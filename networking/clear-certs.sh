docker exec -it traefik cat /letsencrypt/acme.json > acme.json
# edit acme.json
docker cp acme.json traefik:/letsencrypt/acme.json
docker exec -it traefik chmod 600 /letsencrypt/acme.json
docker restart traefik
