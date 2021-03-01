FROM alpine:3.11

RUN apk update

RUN apk add libc6-compat openrc wget nginx curl php7 php7-fpm php7-mysqli php7-mbstring php7-json php7-session

RUN adduser -D -g 'www' www

RUN mkdir /www
RUN chown -R www:www /var/lib/nginx
RUN chown -R www:www /www

RUN mkdir -p /run/nginx

RUN wget https://dl.influxdata.com/telegraf/releases/telegraf-1.17.0_linux_amd64.tar.gz
RUN tar -zxvf telegraf-1.17.0_linux_amd64.tar.gz 
COPY ./src/telegraf.conf telegraf-1.17.0/usr/bin/

COPY ./src/phpMyAdmin-5.0.4-all-languages.zip /
RUN unzip phpMyAdmin-5.0.4-all-languages.zip
RUN mv phpMyAdmin-5.0.4-all-languages phpmyadmin
COPY ./src/nginx.conf /etc/nginx/

RUN mv phpmyadmin /var/www/html
COPY ./src/phpmyadmin.inc.php /var/www/html/config.inc.php
RUN mkdir /var/www/html/tmp
RUN chmod 777 /var/www/html/tmp
COPY ./src/start.sh /

COPY ./src/liveness.sh /

EXPOSE 5000

CMD ["sh", "start.sh"]