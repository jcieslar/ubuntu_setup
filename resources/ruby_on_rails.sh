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
  rbenv install 2.0.0-p451

  echo "gem: --no-ri --no-rdoc" > ~/.gemrc
fi

# nokogiri
install libxslt-dev
install libxml2-dev

# capybara-webkit
install libqtwebkit-dev
