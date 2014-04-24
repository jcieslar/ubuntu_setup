#!/bin/bash
source ../lib/main.sh

add-repo "deb http://archive.canonical.com/ $(lsb_release -sc) partner"

#update-repo

install vim
install git
install skype
install vlc
install dropbox
install exuberant-ctags
install ncurses-term
install curl

#git-clone git@github.com:jcieslar/dotfiles.git ~/kuba-test/super

if [ -f ../private.sh ]; then
  echo 'Installing private...'
  source ../private.sh
fi

