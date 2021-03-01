#!/bin/sh
telegraf="$(ps | pgrep "telegraf")"
grafana="$(ps | pgrep "grafana")"

if [ -z "$telegraf" ]; then
    exit 1
elif [ -z "$grafana" ]; then
    exit 1
else
    exit 0
fi