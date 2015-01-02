#!/bin/bash

# Workaround for making system variables available to Laravel
# NOTE: Usually it would be through FastCGI (fastcgi_param option) > NGinX > HHVM > Laravel
# NOTE: That didn't work, sudo -E nginx didn't work, and also HHVM does not provide the option..
/var/script/update-nginx-custom-env.sh

# Start services
/usr/sbin/sshd -D &

service hhvm start
service nginx start

# Run setup
cd /var/script/
if [ ! -f /var/script/.setup.lock ]; then
	echo "Setting up Laravel.."
	./setup.sh && touch ./.setup.lock
fi

# Attach to log
tail -f /var/log/nginx/web.access.log
