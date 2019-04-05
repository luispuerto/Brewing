#!/usr/bin/env bash

# In this script we are going to update, upgrade, pu
#

# brew update && brew upgrade && brew cleanup && brew prune && brew cask outdated && brew cask cleanup

set -x
brew list
set +x
echo "get into list"
brew list > ~/Coding/Brewing/brew\ apps.txt
brew cask list > ~/Coding/Brewing/brew\ cask\ apps.txt

$SHELL
