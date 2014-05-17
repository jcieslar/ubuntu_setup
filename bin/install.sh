#!/bin/bash

source ~/.bashrc
source ../lib/main.sh

#add-repo "deb http://archive.canonical.com/ $(lsb_release -sc) partner"

#update-repo

sudo apt-get update && sudo apt-get upgrade

install vim-gtk
install git
install curl

source ../resources/media.sh
source ../resources/tools.sh
source ../resources/dotfiles_jcieslar.sh
source ../resources/ruby_on_rails.sh
source ../resources/java.sh
source ../resources/databases.sh
source ../resources/settings.sh

if [ -f ../private.sh ]; then
  echo 'Installing private...'
  source ../private.sh
fi

