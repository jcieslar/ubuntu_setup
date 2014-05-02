#!/bin/bash

add-repo 'deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main' psql

add-key "http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc" psql

update-repo

# mysql
install mysql-server
install mysql-client
install libmysqlclient-dev

# postgresql
install postgresql-common
install postgresql-9.3
install libpq-dev

# redis TODO fix me
# install redis-server
# cp /etc/redis/redis.conf /etc/redis/redis.conf.default
# service redis-server restart
