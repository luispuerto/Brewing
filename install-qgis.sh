#!/usr/bin/env bash

set -v # verbose, to echo the commands in the shell, not just the output. 
# Uninstalling previous version
brew uninstall qgis
# Installing QGIS 
brew install qgis \
	--with-grass \
	--with-saga \
	--with-r \
	--with-orfeo6 \
	--with-qspatialite \
	--with-lastools \
	--with-liblas \
	--with-szip \
	--with-taudem \
	--with-whitebox \
	--with-whitebox-tools \
	--with-wine

# mv -f 'find $(brew --prefix)/Cellar/qgis/ -name "QGIS.app"' /Applications/QGIS.app
# ln -s /Applications/QGIS.app 'find $(brew --prefix)/Cellar/qgis/ -name "3.*" -print -quit'

# Creating an alias to /Applications 
trash /Applications/QGIS.app
qgis_location=$(find $(brew --prefix)/Cellar/qgis/ -name "3.*" -print -quit)/QGIS.app
osascript -e 'tell application "Finder"' -e 'make new alias to file (posix file "'$qgis_location'") at (posix file "/Applications")' -e 'end tell'