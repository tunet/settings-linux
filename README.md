# INSTALL

````bash
apt-get update
````

````bash
apt-get install libcurl4-gnutls-dev libexpat1-dev gettext libz-dev libssl-dev
````

````bash
apt-get install git
````

````bash
git clone https://github.com/tunet/settings-linux.git
````

````bash
cd settings-linux
````

````bash
git checkout docker-pack
````

````bash
chmod 0777 install-docker.sh install-traefik.sh
````

Configure: config.cfg

````bash
./install-docker.sh
````

````bash
./install-traefik.sh
````

````bash
cd traefik
````

````bash
docker network add proxy
````

````bash
docker-compose up -d --build
````
