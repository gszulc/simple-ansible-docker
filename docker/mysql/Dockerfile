
FROM mysql
LABEL maintainer="gszulc@gmx.com"

ENV MYSQL_ROOT_PASSWORD="simplepassword"

RUN apt update 

## pull test db
COPY init.sql /docker-entrypoint-initdb.d/

## expose port
EXPOSE 3306

