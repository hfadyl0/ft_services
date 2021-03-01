#!/bin/sh
nginx="$(ps | pgrep "nginx")"
sshd="$(ps | pgrep "sshd")"
telegraf="$(ps | pgrep "telegraf")"
if [ -z "$telegraf"]; then
    exit 1
elif [ -z "$sshd"]; then 
    exit 1
elif [ -z "$nginx" ]; then
    exit 1
else
    exit 0
fi