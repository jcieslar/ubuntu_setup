#!/bin/bash

# install rvm with ruby
#if ! type rvm; then
#  \curl -L https://get.rvm.io | bash -s stable --ruby
#  source ~/.rvm/scripts/rvm
#  type rvm | head -n 1
#  echo -n '[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*' >> ~/.bashrc
#fi
#
#rvm install ruby-1.9.3-p545

# rbenv build
install autoconf
install bison
install build-essential
install libssl-dev
install libyaml-dev
install libreadline6
install libreadline6-dev
install zlib1g
install zlib1g-dev
install libreadline-dev

if ! type rbenv; then
  git clone git://github.com/sstephenson/rbenv.git ~/.rbenv
  echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
  echo 'eval "$(rbenv init -)"' >> ~/.bashrc

  git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
  echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc

  curl -fsSL https://gist.github.com/mislav/a18b9d7f0dc5b9efc162.txt | rbenv install --patch 2.1.1
  rbenv global 2.1.1
  ruby -v
  rbenv install 1.9.3-p545
  rbenv install 2.0.0-p481

  echo "gem: --no-ri --no-rdoc" > ~/.gemrc

  # https://github.com/ianheggie/rbenv-binstubs
  cd ~/.rbenv/plugins
  git clone https://github.com/ianheggie/rbenv-binstubs.git

#  cd ~/.rbenv/plugins/ruby-build
#  pull master
#  cd
fi

# nokogiri
install libxslt-dev
install libxml2-dev

# capybara-webkit
install libqtwebkit-dev

# rmagick
install imagemagick
install libmagickwand-dev

# javascript runtime
install nodejs
install npm

# prax like a pow
# sudo git clone git://github.com/ysbaddaden/prax.git /opt/prax
# cd /opt/prax/
# ./bin/prax install
