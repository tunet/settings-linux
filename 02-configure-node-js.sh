#!/bin/bash

source ~/.nvm/nvm.sh;
source ~/.profile;
source ~/.bashrc;

nvm install 7.4.0;
nvm alias default 7.4.0;

npm install webpack@2.2.* -g;
npm install webpack-dev-server@2.3.* -g;
