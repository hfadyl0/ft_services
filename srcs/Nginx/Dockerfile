FROM alpine:3.11

RUN apk update

# install packages

RUN apk add nginx openrc libc6-compat openssh

# create the user that the web server will use

RUN adduser -D -g 'www' www

# setup the web server files and permitions

RUN mkdir /www
RUN chown -R www:www /var/lib/nginx
RUN chown -R www:www /www

RUN mkdir -p /run/nginx
RUN mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.orig

RUN wget https://dl.influxdata.com/telegraf/releases/telegraf-1.17.0_linux_amd64.tar.gz
RUN tar -zxvf telegraf-1.17.0_linux_amd64.tar.gz 
COPY ./src/telegraf.conf telegraf-1.17.0/usr/bin/

COPY src/nginx-selfsigned.crt /etc/ssl/certs/nginx-selfsigned.crt
COPY src/nginx-selfsigned.key /etc/ssl/private/nginx-selfsigned.key

COPY ./src/nginx.conf /etc/nginx/
COPY ./src/index.html /www/index.html
COPY ./src/start.sh /
COPY ./src/liveness.sh /

RUN chmod +x start.sh

RUN mkdir /var/run/sshd
RUN adduser -D admin
RUN echo "admin:admin"|chpasswd
RUN ssh-keygen -A

EXPOSE 80 443 22

CMD ["sh", "start.sh"]