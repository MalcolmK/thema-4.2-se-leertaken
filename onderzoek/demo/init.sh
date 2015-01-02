#!/bin/bash

if [ "$1" = "stop" ]; then
	# Stahp and clear
	echo "Stopping ALL containers.."

	docker kill $(docker ps -a -q --no-trunc)
	echo "Removing ALL containers.."
	docker rm $(docker ps -a -q --no-trunc)
else
	# Run MYSQL
	echo "Running database container.."
	export DOCKER_DB_ID=$(docker run --name db -e MYSQL_ROOT_PASSWORD=banaan -d mysql)

	# Run Nginx + HHVM
	if [ "$(docker images | awk '{print $1}' | grep web | wc -l)" = "0" ]; then
		echo "Building web image.."
		docker build -t="web" web/
	fi

	echo "Running web container.."
	export DOCKER_WEB_ID=$(docker run -d -p 80:80 \
		-v $(pwd)/web/nginx:/etc/nginx/sites-enabled \
		-v $(pwd)/web/certs:/etc/nginx/certs \
		-v $(pwd)/web/logs:/var/log/nginx \
		-v $(pwd)/site:/var/www/html web)

	echo "Attaching to web container.."
	docker attach --sig-proxy=false $DOCKER_WEB_ID
fi
