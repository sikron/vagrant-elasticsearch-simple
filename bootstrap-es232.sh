#!/usr/bin/env bash

# update apt
sudo apt-get update

# install java
sudo apt-get install openjdk-7-jre-headless -y

# install elasticsearch
wget https://download.elastic.co/elasticsearch/release/org/elasticsearch/distribution/deb/elasticsearch/2.3.2/elasticsearch-2.3.2.deb
sudo dpkg -i elasticsearch-2.3.2.deb

# make it accessible from host (necessary for elasticsearch 2)
sudo echo "network.bind_host: 0" >> /etc/elasticsearch/elasticsearch.yml
sudo echo "network.host: 0.0.0.0" >> /etc/elasticsearch/elasticsearch.yml

# autostart it
sudo update-rc.d elasticsearch defaults

# start it
sudo service elasticsearch start

# install head
sudo /usr/share/elasticsearch/bin/plugin install mobz/elasticsearch-head
sudo /usr/share/elasticsearch/bin/plugin install mapper-attachments
sudo /usr/share/elasticsearch/bin/plugin install delete-by-query

# re-start it
sudo service elasticsearch restart

