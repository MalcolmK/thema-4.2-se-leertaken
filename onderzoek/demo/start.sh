#!/bin/bash

# Run MYSQL
#docker run --name db -e MYSQL_ROOT_PASSWORD=banaan -d mysql

# Run Nginx + HHVM
docker run -d -p 80:80 \
	-v $(pwd)/web/nginx:/etc/nginx/sites-enabled \
	-v $(pwd)/web/certs:/etc/nginx/certs \
	-v $(pwd)/web/logs:/var/log/nginx \
	-v $(pwd)/site:/var/www/html web
