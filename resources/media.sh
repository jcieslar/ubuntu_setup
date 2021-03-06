#!/bin/bash

add-repo "deb http://downloads.hipchat.com/linux/apt stable main" hipchat
add-repo "deb http://dl.google.com/linux/chrome/deb/ stable main" google-chrome-stable
add-repo "deb http://repository.spotify.com stable non-free" spotify
# add-repo "ppa:atareao/atareao" calendar-indicator
add-repo "ppa:pipelight/stable" pipelight-multi

add-key "https://www.hipchat.com/keys/hipchat-linux.key" hipchat
add-key "https://dl-ssl.google.com/linux/linux_signing_key.pub" google-chrome-stable

if type spotify; then
  sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 94558F59
fi
sudo add-apt-repository ppa:atareao/atareao
sudo add-apt-repository ppa:kazam-team/stable-series
sudo add-apt-repository ppa:fingerprint/fprint
sudo add-apt-repository ppa:team-xbmc/ppa

update-repo

# Skype
sudo dpkg --add-architecture i386
sudo apt-get update
sudo apt-get install gdebi
wget download.skype.com/linux/skype-ubuntu-precise_4.3.0.37-1_i386.deb
sudo gdebi skype-ubuntu-precise_4.3.0.37-1_i386.deb


install vlc
install nautilus-dropbox
# fix dropbox the indicator issue
install libappindicator1
install flashplugin-installer
install gimp
install hipchat
install shutter
install rar
install google-chrome-stable
install unity-webapps-common
install unity-tweak-tool
install ubuntu-restricted-extras
install wine
install spotify-client
install steam
install compizconfig-settings-manager
install unity-webapps-twitter
install calibre
# Disable online searches from dash:
wget -q -O - https://fixubuntu.com/fixubuntu.sh | bash
# install screencloud -> TODO fix me

# install calendar-indicator
# install my-weather-indicator

# silverlight
install pipelight-multi
sudo pipelight-plugin --enable silverlight
sudo pipelight-plugin --enable widevine

# pushbullet
install pushbullet-indicator

# kazam for screencast
install kazam

# fingerprint
sudo apt-get install libfprint0 fprint-demo libpam-fprintd gksu-polkit

# http://www.webupd8.org/2014/04/10-things-to-do-after-installing-ubuntu.html
# http://itsfoss.com/things-to-do-after-installing-ubuntu-14-04/

# autostart
sudo cp /usr/share/applications/terminator.desktop /etc/xdg/autostart/
sudo cp /usr/share/applications/skype.desktop /etc/xdg/autostart/
sudo cp /usr/share/applications/shutter.desktop /etc/xdg/autostart/

# xbmc
sudo apt-get install python-software-properties pkg-config software-properties-common
sudo apt-get install kodi

# Audio recording
sudo apt-add-repository ppa:osmoma/audio-recorder
sudo apt-get update
sudo apt-get install audio-recorder
