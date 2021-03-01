#!/bin/sh
rc-status
rc-update add php-fpm7
touch /run/openrc/softlevel
rc-service php-fpm7 start
./telegraf-1.17.0/usr/bin/telegraf --config /telegraf-1.17.0/usr/bin/telegraf.conf &
nginx -g "daemon off;"