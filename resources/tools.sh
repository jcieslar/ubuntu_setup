#!/bin/bash
sudo sh -c 'echo "deb http://download.virtualbox.org/virtualbox/debian trusty contrib" >> /etc/apt/sources.list'
wget -q http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc -O- | sudo apt-key add -
sudo apt-get update

install terminator
install guake
install p7zip
install p7zip-rar
install virtualbox-4.3
install screen
install gparted
install tmux

# autostart guake
sudo cp /usr/share/applications/guake.desktop /etc/xdg/autostart/
sudo cp /usr/share/applications/terminator.desktop /etc/xdg/autostart/
