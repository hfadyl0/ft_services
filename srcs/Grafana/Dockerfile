FROM alpine:3.11

RUN apk update
RUN apk add wget libc6-compat openrc
RUN wget https://dl.grafana.com/oss/release/grafana-7.4.0.linux-amd64.tar.gz
RUN tar -zxvf grafana-7.4.0.linux-amd64.tar.gz
  
RUN wget https://dl.influxdata.com/telegraf/releases/telegraf-1.17.0_linux_amd64.tar.gz
RUN tar -zxvf telegraf-1.17.0_linux_amd64.tar.gz 
COPY ./src/telegraf.conf telegraf-1.17.0/usr/bin/

COPY ./src/start.sh /
COPY ./src/liveness.sh /

COPY ./src/grafana.db /grafana-7.4.0/data/grafana.db

EXPOSE 3000

CMD ["sh", "start.sh"]