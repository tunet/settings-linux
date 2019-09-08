#!/bin/bash

source ./config.cfg

# configure traefik
apt-get update

apt-get install -y apache2-utils

echo "TRAEFIK_FRONTEND_HOST=${TRAEFIK_FRONTEND_HOST}" > traefik/.env

touch traefik/acme.json
chmod 0600 traefik/acme.json

TRAEFIK_LOGIN_DATA=$(htpasswd -nb $TRAEFIK_LOGIN $TRAEFIK_PASSWORD)

docker run -it --rm \
    -v $PWD/replace.php:/usr/src/myapp/replace.php \
    -v $PWD/traefik/traefik.toml:/usr/src/myapp/traefik.toml \
    -w /usr/src/myapp \
    -e TRAEFIK_LOGIN_DATA=${TRAEFIK_LOGIN_DATA} \
    -e TRAEFIK_EMAIL=${TRAEFIK_EMAIL} \
     php:7.3-cli php replace.php
