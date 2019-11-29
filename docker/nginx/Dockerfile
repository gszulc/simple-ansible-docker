FROM ubuntu:18.04

RUN apt update && apt install python3 python3-pip nginx libmysqlclient-dev -y
RUN pip3 install django uwsgi mysql-connector-python

COPY app /app

COPY djangodb_nginx.conf /etc/nginx/sites-enabled/

RUN cd /app/djangodb && python3 manage.py collectstatic && python3 manage.py makemigrations && python3 manage.py makemigrations

# Forward request and error logs to docker log collector
RUN ln -sf /dev/stdout /var/log/nginx/access.log \
	&& ln -sf /dev/stderr /var/log/nginx/error.log

STOPSIGNAL SIGTERM

EXPOSE 80 8000

CMD ["nginx", "-g", "daemon off;"]