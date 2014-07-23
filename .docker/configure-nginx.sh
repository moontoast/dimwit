#!/bin/bash

mkdir -p /mnt/media
chmod 777 /mnt/media

rm /etc/nginx/sites-enabled/*
cp /app/nginx.conf /etc/nginx/sites-enabled

#configure nginx main conf
echo "daemon off;" >> /etc/nginx/nginx.conf
sed -i /etc/nginx/nginx.conf -e 's:/var/log/nginx/access.log:/dev/stdout:'
sed -i /etc/nginx/nginx.conf -e 's:/var/log/nginx/error.log:/dev/stdout:'
