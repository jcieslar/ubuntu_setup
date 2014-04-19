#!/bin/bash

# params:
# * name of program
function install { 
  if ! type $1; then
    echo "installing: $1..."
    sudo apt-get install $1
    echo 'finished'
  else
    echo "$1 is installed"
  fi
}

# params:
# * repo url
# * path
function add-repo {
  if [ ! -d $2 ]; then
    mkdir $2
  fi
  cd $2
  git clone $1
  cd
}
