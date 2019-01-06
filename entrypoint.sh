#!/bin/sh

sed -i 's#<UPSTREAM>#'$(echo $UPSTREAM)'#' /etc/nginx/conf.d/default.conf
sed -i 's#<PORT>#'$(echo $PORT)'#' /etc/nginx/conf.d/default.conf

nginx -g 'daemon off;'
