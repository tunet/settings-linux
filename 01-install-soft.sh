#!/bin/bash

sudo apt-get update;

# PostgreSQL
sudo apt-get install postgresql-10 -y;
#sudo apt-get install postgresql-client-9.6 -y;
#sudo apt-get install postgresql-contrib-9.6 -y;
#sudo apt-get install libpq-dev -y;
#sudo apt-get install postgresql-server-dev-9.6 -y;

# GOOGLE CHROME
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list';
sudo apt-get update;
sudo apt-get install google-chrome-stable -y;

# DBEAVER
sudo add-apt-repository ppa:serge-rider/dbeaver-ce;
sudo apt-get update;
sudo apt-get install dbeaver-ce -y;

# DOCKER
sudo apt-get update;
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common -y;
sudo sh -c 'echo "deb [arch=amd64] https://download.docker.com/linux/ubuntu artful stable" >> /etc/apt/sources.list.d/docker.list';
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-get update;
sudo apt-get install docker-ce -y;
sudo apt-get install docker-compose -y;
