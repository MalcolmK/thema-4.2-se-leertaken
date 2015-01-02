#!/bin/bash

DOCKER_DB_NAME='db'
DOCKER_WEB_NAME='web'

docker_container_names() {
	docker ps | awk -F'[[:space:]][[:space:]][[:space:]]*' '{print $7}'
}

docker_id_by_name() {
	docker ps --no-trunc | grep "  $1\s*\$" | awk '{print $1}'
}

if [ "$1" = "stop" ]; then
	CONTAINERS=$(docker ps -a -q --no-trunc)

	if [ "$CONTAINERS" != "" ]; then
		# Stahp and clear
		echo "=> Stopping ALL containers.."
		docker kill $CONTAINERS

		echo "=> Removing ALL containers.."
		docker rm $CONTAINERS
	fi

	echo "Done."
else
	# Run MYSQL
	if [ "$(docker_container_names | grep "$DOCKER_DB_NAME" | wc -l)" = "0" ]; then
		echo "=> Running database container.."
		DOCKER_DB_ID=$(docker run \
			--name "$DOCKER_DB_NAME" \
			-d -p 3306:3306 \
			-e MYSQL_ROOT_PASSWORD=banaan \
			-e MYSQL_DATABASE=laravel \
			mysql)
	else
		echo "=> Database container already running."
		DOCKER_DB_ID=$(docker_id_by_name "$DOCKER_DB_NAME")
	fi

	echo "Database container ID: $DOCKER_DB_ID"

	# Run Nginx + HHVM
	if [ "$(docker images | awk '{print $1}' | grep '^web$' | wc -l)" = "0" ]; then
		echo "Building web image.."
		docker build -t="web" web/
	fi

	if [ "$(docker_container_names | grep "$DOCKER_WEB_NAME" | wc -l)" = "0" ]; then
		echo "=> Running web container.."
		DOCKER_WEB_ID=$(docker run \
			--name "$DOCKER_WEB_NAME" \
			-d \
			-p 80:80 \
			-p 2222:22 \
			-v $(pwd)/web/nginx:/etc/nginx/sites-enabled \
			-v $(pwd)/web/certs:/etc/nginx/certs \
			-v $(pwd)/web/logs:/var/log/nginx \
			-v $(pwd)/web/script:/var/script \
			-v $(pwd)/site:/var/www/html \
			--link db:db \
			web)
	else
		echo "=> Web container already running."
		DOCKER_WEB_ID=$(docker_id_by_name "$DOCKER_WEB_NAME")
	fi

	echo "Web container ID: $DOCKER_WEB_ID"

	# Attach to web container
	echo "=> Attaching to web container.."
	docker attach --sig-proxy=false $DOCKER_WEB_ID
fi
