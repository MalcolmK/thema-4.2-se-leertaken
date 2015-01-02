#!/bin/bash

service hhvm start
service nginx start

tail -f /var/log/nginx/web.access.log
