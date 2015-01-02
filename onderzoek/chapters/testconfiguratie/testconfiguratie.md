# Testconfiguratie

## Installatie

- Homebrew (http://brew.sh/)
- $ brew install boot2docker
- $ boot2docker init
- $ boot2docker up
- $ boot2docker shellinit
- Uitleggen waarom shellinit nodig is
- $ $(boot2docker shellinit)
- Met Fishshell:
	$ boot2docker shellinit | while read line; eval $line; end
- Zie ook http://stackoverflow.com/a/27529061/1453912

## Voorbeeld

DOCKER_DB_ID=$(docker run \
	--name "db" \
	-d -p 3306:3306 \
	-e MYSQL_ROOT_PASSWORD=banaan \
	-e MYSQL_DATABASE=laravel \
	mysql)

cd demo/web
docker build -t="web" .
DOCKER_WEB_ID=$(docker run \
	--name "web" \
	-d \
	-p 80:80 \
	-p 2222:22 \
	-v $(pwd)/nginx:/etc/nginx/sites-enabled \
	-v $(pwd)/certs:/etc/nginx/certs \
	-v $(pwd)/logs:/var/log/nginx \
	-v $(pwd)/script:/var/script \
	-v $(realpath $(pwd)/../site):/var/www/html \
	--link db:db \
	web)
docker attach --sig-proxy=false $DOCKER_WEB_ID


Voor debuggen:
	[host] docker run \
		--name "web" \
		-it \
		-p 80:80 \
		-p 2222:22 \
		-v $(pwd)/nginx:/etc/nginx/sites-enabled \
		-v $(pwd)/certs:/etc/nginx/certs \
		-v $(pwd)/logs:/var/log/nginx \
		-v $(pwd)/script:/var/script \
		-v $(realpath $(pwd)/../site):/var/www/html \
		--link db:db \
		web /bin/bash
	[container] $ /var/www/start.sh


Notes:
http://unix.stackexchange.com/questions/118579/why-doesnt-docker-container-start-at-boot-w-upstart-script-on-ubuntu-12-04


- beschrijving omgeving
	- infrastructuur
	- docker layers
	- layer caching
	- container starting
	- container linking
	- bash into container
	- ssh
- stappen
	- starten/stoppen
	- resultaat
- overig
	- mounten db voor datapersistentie
