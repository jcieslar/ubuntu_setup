#!/bin/bash

source ~/.bashrc

install exuberant-ctags
install ncurses-term
install ack-grep

if [ ! -d ~/dotfiles/ ]; then
  git-clone git@github.com:jcieslar/dotfiles.git ~/
  cd ~/dotfiles/bin
  ./install.sh
  cd ..
  git submodule update --init --recursive
  source ~/.bashrc
fi
