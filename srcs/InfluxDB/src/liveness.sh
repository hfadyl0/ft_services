#!/bin/sh
telegraf="$(ps | pgrep "telegraf")"
influxd="$(ps | pgrep "influxd")"

if [ -z "$telegraf" ]; then
    exit 1
elif [ -z "$influxd" ]; then
    exit 1
else
    exit 0
fi