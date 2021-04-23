#!/bin/sh

echo "setup network"
docker network create pfa

echo "running mysql"
docker run -d --rm --name mysql --mount type=bind,source=$(pwd)/setup.sql,target=/docker-entrypoint-initdb.d/setup.sql -e MYSQL_ROOT_PASSWORD=root --network pfa mysql:5.7
sleep 10s

echo "running application"
docker run --rm --name desafio-pfa -d --network pfa gabsms/desafio-pfa
docker run --rm --name nginx -d --network pfa -p 8080:80 gabsms/nginx-desafio-pfa