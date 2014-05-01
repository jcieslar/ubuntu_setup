#!/bin/bash

add-repo "deb http://downloads.hipchat.com/linux/apt stable main"
add-repo "deb http://dl.google.com/linux/chrome/deb/ stable main"

add-key https://www.hipchat.com/keys/hipchat-linux.key
add-key https://dl-ssl.google.com/linux/linux_signing_key.pub

update-repo

install skype
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

# http://www.webupd8.org/2014/04/10-things-to-do-after-installing-ubuntu.html
# http://itsfoss.com/things-to-do-after-installing-ubuntu-14-04/
