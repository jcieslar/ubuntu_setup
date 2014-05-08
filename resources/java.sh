#!/bin/bash

install openjdk-7-jre-headless

# TODO fix me
VERSION=0.90.13
wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-$VERSION.deb
sudo dpkg -i elasticsearch-$VERSION.deb
sudo service elasticsearch start
