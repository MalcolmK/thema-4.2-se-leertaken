#!/bin/bash

# Create Laravel project, run with:
# docker run \
# 	-it \
# 	-v $(pwd)/site:/var/www/html \
# 	-v $(pwd)/web/script:/var/script \
# 	web \
# 	/var/script/create.sh

rm -rf /tmp/laravel
composer create-project laravel/laravel /tmp/laravel --prefer-dist
shopt -s dotglob nullglob
mv -f /tmp/laravel/* /var/www/html/
