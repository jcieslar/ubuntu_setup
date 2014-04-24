#!/bin/bash

source ~/ubuntu_setup/lib/main.sh

function us-install {
  install $1
  echo "install $1" >> ~/ubuntu_setup/private.sh
}
