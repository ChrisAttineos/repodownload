#!/bin/bash
sudo yum install docker -y
#installation docker compose
wget https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m) 
sudo mv docker-compose-$(uname -s)-$(uname -m) /usr/local/bin/docker-compose
sudo chmod -v +x /usr/local/bin/docker-compose
sudo systemctl start docker 
sudo systemctl enable docker
sudo docker-compose up --detach
