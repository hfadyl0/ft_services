#!/bin/sh
telegraf="$(ps | pgrep "telegraf")"
vsftpd="$(ps | pgrep "vsftpd")"

if [ -z "$telegraf" ]; then
    exit 1
elif [ -z "$vsftpd" ]; then
    exit 1
else
    exit 0
fi