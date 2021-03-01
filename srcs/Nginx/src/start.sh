#!/bin/sh
rc-status
#hfadyl was here
touch /run/openrc/softlevel
./telegraf-1.17.0/usr/bin/telegraf --config /telegraf-1.17.0/usr/bin/telegraf.conf &
/usr/sbin/sshd &
nginx -g "daemon off;"