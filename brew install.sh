# Scrit's Name: "brew cask install my apps.sh"
# Description: This is a scrip to install the apps I ussually use and I can #
# install through brew cask.
# Author: Luis Puerto
# Email: luiss.puerto@gmail.com
# Inspired on: https://bitbucket.org/xebufrog/automation/src/61bb87f6873c106c572ed0ca6ea5a5b4912516a3/install_common_apps.sh?at=master&fileviewer=file-view-default

# List of the apps I'm going to intall


if test ! $(which brew); then
  echo "Installing homebrew"
  ruby -e "$(curl -fsSl https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update

# Other useful binaries

binaries=(
  dfd
