FROM alpine:3.11

RUN apk update

RUN apk add influxdb openrc libc6-compat

RUN wget https://dl.influxdata.com/telegraf/releases/telegraf-1.17.0_linux_amd64.tar.gz
RUN tar -zxvf telegraf-1.17.0_linux_amd64.tar.gz 
COPY ./src/telegraf.conf telegraf-1.17.0/usr/bin/

RUN mkdir /run/openrc
COPY ./src/start.sh /
COPY ./src/liveness.sh /

RUN chmod +x start.sh


EXPOSE 8086

CMD ["sh", "start.sh"]