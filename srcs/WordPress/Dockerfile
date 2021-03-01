FROM alpine:3.11

RUN apk update

RUN apk add openrc libc6-compat wget nginx curl php7 php7-fpm php7-mysqli php7-mbstring php7-json php7-session

RUN adduser -D -g 'www' www

RUN mkdir /www
RUN chown -R www:www /var/lib/nginx
RUN chown -R www:www /www

RUN mkdir -p /run/nginx

COPY ./src/wordpress-5.6.1.tar.gz /
RUN tar -xvf wordpress-5.6.1.tar.gz

RUN wget https://dl.influxdata.com/telegraf/releases/telegraf-1.17.0_linux_amd64.tar.gz
RUN tar -zxvf telegraf-1.17.0_linux_amd64.tar.gz 
COPY ./src/telegraf.conf telegraf-1.17.0/usr/bin/

RUN mv wordpress/ /var/www/html
COPY ./src/nginx.conf /etc/nginx/nginx.conf
COPY  ./src/wp-config.php /var/www/html/

COPY ./src/start.sh /
COPY ./src/liveness.sh /


EXPOSE  5050

CMD ["sh", "start.sh"]