# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hfadyl <hfadyl@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/09 15:56:53 by hfadyl            #+#    #+#              #
#    Updated: 2021/02/25 11:43:53 by hfadyl           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:3.11

RUN apk update

RUN apk add mysql mysql-client openrc libc6-compat

COPY ./src/my.cnf /etc/my.cnf
COPY ./src/wordpress_db.sql /
COPY ./src/start.sh /
COPY ./src/liveness.sh /

RUN mkdir -p /var/lib/mysql /run/mysqld/

RUN wget https://dl.influxdata.com/telegraf/releases/telegraf-1.17.0_linux_amd64.tar.gz
RUN tar -zxvf telegraf-1.17.0_linux_amd64.tar.gz 
COPY ./src/telegraf.conf telegraf-1.17.0/usr/bin/


RUN chmod +x start.sh

EXPOSE 3306

CMD ["sh", "start.sh"]

