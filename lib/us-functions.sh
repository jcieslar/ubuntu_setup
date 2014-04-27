#!/bin/bash

MAIN=~/ubuntu_setup/lib/main.sh

us-install() {
  source $MAIN
  install $1
  echo "install $1" >> ~/ubuntu_setup/private.sh
  unset_fun
}

unset_fun() {
  for fun in "${PRIVATE_FUNCTIONS[*]}"
  do
    unset $fun
  done
}
