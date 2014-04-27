#!/bin/bash

MAIN=~/ubuntu_setup/lib/main.sh

us-install() {
  source $MAIN
  if ! is_installed $1; then
    install $1
    echo "install $1" >> ~/ubuntu_setup/private.sh
  fi
  unset_fun
}

unset_fun() {
  for fun in "${PRIVATE_FUNCTIONS[*]}"
  do
    unset $fun
  done
}

is_installed() {
  grep -q -r $1 ~/ubuntu_setup/private.sh
}
