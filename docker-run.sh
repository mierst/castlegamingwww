#!/usr/bin/env bash 
docker run -d --name nginx -p 80:80 -v /var/log/nginx:/var/log/nginx -v /var/castlegaming_www:/usr/share/nginx/html nginx:latest
docker run -d --name ftpd_server -v /var/castlegaming_www:/var/www -p 21:21 -p 30000-30009:30000-30009 -e "PUBLICHOST=localhost" stilliard/pure-ftpd:hardened
