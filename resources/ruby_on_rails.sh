#!/bin/bash

# install rvm with ruby
if ! type rvm; then
  \curl -L https://get.rvm.io | bash -s stable --ruby
  source ~/.rvm/scripts/rvm
  type rvm | head -n 1
  echo -n '[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*' >> ~/.bashrc
fi
