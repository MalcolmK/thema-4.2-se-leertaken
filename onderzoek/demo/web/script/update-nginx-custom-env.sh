#!/bin/bash

ENV_DIR=/etc/nginx/custom-env/ # Must be equal

mkdir -p "$ENV_DIR"
rm -f "$ENV_DIR"/*

for LINE in $(env | grep '^DB_'); do
	KEY=$(echo $LINE | awk -F'=' '{ print $1}')
	VAL=$(echo $LINE | awk -F'=' '{ print $2}')
	echo -n "$VAL" >> $ENV_DIR/$KEY
done
