#!/bin/bash

add-repo 'deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main' psql
add-repo 'deb http://packages.dotdeb.org squeeze all' redis-server
add-repo 'deb-src http://packages.dotdeb.org squeeze all' redis-server

add-key "http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc" psql
add-key " http://www.dotdeb.org/dotdeb.gpg", redis-server

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list

update-repo

# mysql
install mysql-server
install mysql-client
install libmysqlclient-dev

# postgresql
install postgresql-common
install postgresql-9.3
install libpq-dev
install postgresql-contrib-9.3
install pgadmin3

# redis TODO fix me
install redis-server
cp /etc/redis/redis.conf /etc/redis/redis.conf.default
service redis-server restart

install memcached

install mongodb-org
sudo /etc/init.d/mongod restart
# redis mongo and ngnix

