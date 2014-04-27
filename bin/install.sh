#!/bin/bash
source ../lib/main.sh

add-repo "deb http://archive.canonical.com/ $(lsb_release -sc) partner"

update-repo

install vim
install git
install curl

install exuberant-ctags
install ncurses-term

#git-clone git@github.com:jcieslar/dotfiles.git ~/kuba-test/super

source ../resources/media.sh
source ../resources/ruby_on_rails.sh

if [ -f ../private.sh ]; then
  echo 'Installing private...'
  source ../private.sh
fi

