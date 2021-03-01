#!/bin/sh
mysql="$(ps | pgrep "mysql")"
telegraf="$(ps | pgrep "telegraf")"
sleep="$(ps | pgrep "sleep")"

if [ -z "$telegraf" ]; then
    exit 1
elif [ -z "$mysql" ]; then
    exit 1
elif [ -z "$sleep" ]; then
    exit 1
else
    exit 0
fi