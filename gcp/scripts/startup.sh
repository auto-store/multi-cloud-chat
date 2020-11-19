#! /bin/bash

sudo apt update
sudo apt install -y nodejs
sudo apt install -y npm
sudo apt install -y git
sudo apt install - y curl

git clone https://github.com/ezesundayeze/anonymouse-realtime-chat-app.git

sudo cd anonymouse-realtime-chat-app
sudo npm install
sudo npm start