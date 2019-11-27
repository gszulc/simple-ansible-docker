FROM ubuntu:18.04

RUN apt update && apt install python3 python3-pip nginx -y
RUN pip3 install django uwsgi

COPY app /app

COPY djangodb_nginx.conf /etc/nginx/sites-enabled/

EXPOSE 80
