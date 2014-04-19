#!/bin/bash
source ../lib/main.sh

add-repo "deb http://archive.canonical.com/ $(lsb_release -sc) partner"

#update-repo

install vim
install git
install skype
install vlc
install dropbox
install wine

#git-clone git@github.com:jcieslar/dotfiles.git ~/kuba-test/super

source ../private.sh
	
