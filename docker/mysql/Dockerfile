##
##
##
## pull base image ubuntu 18.04
FROM mysql

ENV MYSQL_ROOT_PASSWORD="simplepassword"
#ENV MYSQL_USER="root"

RUN apt update 

## pull test db
COPY init.sql /docker-entrypoint-initdb.d/
#RUN cd /root && git clone https://github.com/datacharmer/test_db.git && chmod -R 777 /root/test_db  

## expose port
EXPOSE 3306

