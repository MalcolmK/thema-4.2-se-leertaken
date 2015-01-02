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


cd demo/web
docker build -t="web" .
docker run -d -p 80:80 -v (pwd)/nginx:/etc/nginx/sites-enabled -v (pwd)/certs:/etc/nginx/certs -v (pwd)/logs:/var/log/nginx -v (realpath (pwd)/../site):/var/www/html web
curl http://(boot2docker ip)/


Voor debuggen:
	[host] $ docker run -i -t -p 80:80 -v (pwd)/nginx:/etc/nginx/sites-enabled -v (pwd)/certs:/etc/nginx/certs -v (pwd)/logs:/var/log/nginx -v (realpath (pwd)/../site):/var/www/html web /bin/bash
	[container] $ /var/www/start.sh


Notes:
http://unix.stackexchange.com/questions/118579/why-doesnt-docker-container-start-at-boot-w-upstart-script-on-ubuntu-12-04

## Voorbeeld

- beschrijving omgeving
- stappen
