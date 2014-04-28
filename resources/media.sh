#!/bin/bash

add-repo "deb http://downloads.hipchat.com/linux/apt stable main"
add-key https://www.hipchat.com/keys/hipchat-linux.key

update-repo

install skype
install vlc
install dropbox
install gimp
install hipchat
install shutter

# http://www.webupd8.org/2014/04/10-things-to-do-after-installing-ubuntu.html
# http://itsfoss.com/things-to-do-after-installing-ubuntu-14-04/
