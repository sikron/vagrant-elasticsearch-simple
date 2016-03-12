#!/usr/bin/env bash

# update apt
sudo apt-get update

# install java
sudo apt-get install openjdk-7-jre-headless -y

# install elasticsearch
wget https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-1.3.7.deb
sudo dpkg -i elasticsearch-1.3.7.deb

# autostart it
sudo update-rc.d elasticsearch defaults

# start it
sudo service elasticsearch start

# install head
sudo /usr/share/elasticsearch/bin/plugin install mobz/elasticsearch-head

