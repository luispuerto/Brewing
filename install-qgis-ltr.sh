#!/usr/bin/env bash

set -v # verbose, to echo the commands in the shell, not just the output. 
brew uninstall qgis-ltr
brew install qgis-ltr \
	--with-grass \
	--with-liblas \
	--with-orfeo6 \
	--with-qspatialite \
	--with-r \
	--with-saga \
	--with-szip

# Creating an alias to /Applications 
trash /Applications/QGIS\ LTR.app
qgis_location=$(find $(brew --prefix)/Cellar/qgis-ltr/ -name "3.*" -print -quit)/QGIS.app
osascript -e 'tell application "Finder"' -e 'make new alias to file (posix file "'$qgis_location'") at desktop' -e 'end tell'
mv ~/Desktop/QGIS.app /Applications/QGIS\ LTR.app