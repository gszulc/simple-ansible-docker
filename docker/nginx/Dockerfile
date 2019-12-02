FROM ubuntu:18.04

LABEL maintainer="gszulc@gmx.com"

RUN apt update && apt install python3 python3-pip nginx python3-dev libmysqlclient-dev libssl-dev -y 
RUN pip3 install django uwsgi mysql-connector-python mysqlclient

COPY app /app

COPY djangodb_nginx.conf /etc/nginx/sites-enabled/


# Forward request and error logs to docker log collector
RUN ln -sf /dev/stdout /var/log/nginx/access.log \
	&& ln -sf /dev/stderr /var/log/nginx/error.log

STOPSIGNAL SIGTERM

EXPOSE 8000

ADD start.sh /
RUN chmod +x /start.sh

CMD ["/start.sh"]

