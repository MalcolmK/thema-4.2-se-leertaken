#!/bin/bash

/usr/sbin/sshd -D
service hhvm start
service nginx start

tail -f /var/log/nginx/web.access.log
