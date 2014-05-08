#!/bin/bash

gsettings set com.canonical.Unity.Launcher favorites "['application://nautilus.desktop', 'application://firefox.desktop',
'application://dropbox.desktop', 'application://google-chrome.desktop', 'application://terminator.desktop',
'application://spotify.desktop', 'application://hipchat.desktop', 'application://vlc.desktop']"

gsettings set com.canonical.desktop.interface scrollbar-mode normal

# Disable shopping suggestions
gsettings set com.canonical.Unity.Lenses disabled-scopes "['more_suggestions-amazon.scope',
  'more_suggestions-u1ms.scope', 'more_suggestions-populartracks.scope', 'music-musicstore.scope', 'more_suggestions-ebay.scope', 'more_suggestions-ubuntushop.scope', 'more_suggestions-skimlinks.scope']"

#http://www.noobslab.com/2014/04/thingstweaks-to-do-after-install-of.html
