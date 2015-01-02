#!/bin/bash

# Workaround for making system variables available to Laravel
# NOTE: Usually it would be through FastCGI (fastcgi_param option) > NGinX > HHVM > Laravel
# NOTE: That didn't work, sudo -E nginx didn't work, and also HHVM does not provide the option..
/var/script/update-nginx-custom-env.sh

/usr/sbin/sshd -D

service hhvm start
service nginx start

tail -f /var/log/nginx/web.access.log
