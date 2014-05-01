#!/bin/bash

PRIVATE_FUNCTIONS=(install git-clone add-repo update-repo)

# params:
#   - name of program
install() {
  if ! type $1; then
    echo "installing: $1..."
    sudo apt-get -y --force-yes install $1
    echo 'finished'
  else
    echo "$1 is installed"
  fi
}

# params:
#   - repo url
#   - path
git-clone() {
  if [ ! -d $2 ]; then
    mkdir -p $2
  fi
  cd $2
  git clone $1
  cd
}

add-repo() {
  if ! type $2; then
    sudo add-apt-repository "$1"
  fi
}

update-repo() {
  sudo apt-get update
}

add-key() {
  if ! type $2; then
    wget -O - $1 | apt-key add -
  fi
}

unset_fun() {
  for fun in "${PRIVATE_FUNCTIONS[*]}"
  do
    unset $fun
  done
}

