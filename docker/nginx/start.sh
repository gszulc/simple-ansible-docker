#!/usr/bin/env bash

# start uwsgi
cd /app/djangodb && \
uwsgi --socket :8001 --module djangodb.wsgi &

# start nginx
nginx -g 'daemon off;'