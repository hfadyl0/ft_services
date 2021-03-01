#!/bin/sh

php="$(ps | pgrep "php-fpm7")"
telegraf="$(ps | pgrep "telegraf")"
nginx="$(ps | pgrep "nginx")"

if [ -z "$php" ]; then
    exit 1
elif [ -z "$telegraf" ]; then
    exit 1
elif [ -z "$nginx" ]; then
    exit 1
else
    exit 0
fi