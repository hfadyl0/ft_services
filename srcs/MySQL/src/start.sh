rc-status
touch /run/openrc/softlevel
/usr/bin/mysql_install_db
rc-service mariadb start
./telegraf-1.17.0/usr/bin/telegraf --config /telegraf-1.17.0/usr/bin/telegraf.conf &
mysql -u root -e "CREATE DATABASE wordpress_db;CREATE USER 'admin'@'%' IDENTIFIED BY 'admin';GRANT ALL PRIVILEGES ON * . * TO 'admin'@'%';FLUSH PRIVILEGES;"
mysql -u root wordpress_db < wordpress_db.sql
sleep infinity
