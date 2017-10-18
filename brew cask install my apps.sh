# Scrit's Name: "brew cask install my apps.sh" 
# Description: This is a scrip to install the apps I ussually use and I can #
# install through brew cask.
# Author: Luis Puerto
# Email: luiss.puerto@gmail.com
# Inspired on: https://bitbucket.org/xebufrog/automation/src/61bb87f6873c106c572ed0ca6ea5a5b4912516a3/install_common_apps.sh?at=master&fileviewer=file-view-default

# List of the apps I'm going to intall

apps=(
  appcleaner
  atom
  calibre
  dd-utility
  dropbox
  etcher
  etrecheck
  evernote
  filezilla
  firefox
  flux
  font-awesome-terminal-fonts
  font-hack-nerd-font
  font-meslo-nerd-font
  gdal-framework
  get-lyrical
  github-desktop
  gitup
  goofy
  google-chrome
  iterm2
  java
  keyboardcleantool
  macs-fan-control
  mactex
  musicbrainz-picard
  onyx
  paparazzi
  papers
  readcube
  recordit
  rstudio
  skype
  teamviewer
  the-unarchiver
  transmission
  tunnelblick
  tuxera-ntfs
  vnc-viewer
  wordpresscom
  xld
  xquartz
)

# Install apps to /Applications
# Default is /Users/$user/Applications # this is no longer needed

echo "installing some apps for you..."
# brew cask install --appdir="/Applications" ${apps[@]} # This is no longer needed
brew cask install ${apps[@]}

brew cleanup

echo "It's done!"
