#!/bin/bash
function wait_for_server() {
  until `docker exec -it postgres pg_isready -p 5432 -h localhost -q`; do
    sleep 1
  done
}
docker rm -f $(docker ps -aq)
docker-compose --x-networking up -d
echo "Waiting on postgres server..."
wait_for_server
./psql-cli.sh