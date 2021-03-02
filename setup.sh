#!/bin/sh

minikube delete
minikube start --driver=virtualbox
eval $(minikube docker-env)
    minikube dashboard &


# kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/namespace.yaml
# kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/metallb.yaml
# On first install only
# hfadyl was here!
# kubectl apply -f https://raw.githubusercontent.com/google/metallb/v0.9.3/manifests/namespace.yaml
# kubectl apply -f https://raw.githubusercontent.com/google/metallb/v0.9.3/manifests/metallb.yaml
minikube addons enable metallb;
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"
kubectl apply -f ./srcs/Yaml/metallb.yaml

# building the fucking images: 

docker build -t my_nginx ./srcs/nginx
docker build -t my_sql ./srcs/mysql
docker build -t my_wordpress ./srcs/wordpress
docker build -t my_phpmyadmin ./srcs/phpmyadmin
docker build -t my_influxdb ./srcs/influxdb
docker build -t my_grafana ./srcs/grafana
docker build -t my_ftps ./srcs/ftps
#----------------------------------------------------------------------------------------------------------#


# building the fucking pods and services :

kubectl apply -f ./srcs/Yaml/Nginx.yaml
kubectl apply -f ./srcs/Yaml/MySQL.yaml
kubectl apply -f ./srcs/Yaml/WordPress.yaml
kubectl apply -f ./srcs/Yaml/PhpMyAdmin.yaml
kubectl apply -f ./srcs/Yaml/INfluxDB.yaml
kubectl apply -f ./srcs/Yaml/Grafana.yaml
kubectl apply -f ./srcs/Yaml/FTPS.yaml

#-------------------------------------------#
ssh-keygen -R 192.168.99.124
clear;

