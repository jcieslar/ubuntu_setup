#!/bin/bash

MAIN=~/ubuntu_setup/lib/main.sh
PRIVATE_PATH=~/ubuntu_setup/private.sh

us-install() {
  source $MAIN
  if ! is_installed $1; then
    install $1
    echo "install $1" >> $PRIVATE_PATH
  else
    echo "$1 is installed"
  fi
  unset_fun
}

us-add-repo() {
  source $MAIN
  if ! is_installed $1; then
    add-repo $1
    update-repo
    echo "add-repo $1" >> $PRIVATE_PATH
  fi
  unset_fun
}

is_installed() {
  grep -q -r $1 ~/ubuntu_setup/private.sh
}
