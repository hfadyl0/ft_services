rc-status
touch /run/openrc/softlevel
./telegraf-1.17.0/usr/bin/telegraf --config /telegraf-1.17.0/usr/bin/telegraf.conf &
cd /grafana-7.4.0/bin
./grafana-server
tail -f dev/null