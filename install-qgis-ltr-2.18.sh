#!/usr/bin/env bash

set -v # verbose, to echo the commands in the shell, not just the output. 
brew uninstall qgis-ltr@2.18
brew install qgis-ltr@2.18 \
	--with-grass \
	--with-qspatialite \
	--with-r \
	--with-saga-gis-lts \

# Creating an alias to /Applications 
trash /Applications/QGIS\ LTR\ 2.app
qgis_location=$(find $(brew --prefix)/Cellar/qgis-ltr@2.18/ -name "3.*" -print -quit)/QGIS.app
osascript -e 'tell application "Finder"' -e 'make new alias to file (posix file "'$qgis_location'") at desktop' -e 'end tell'
mv ~/Desktop/QGIS.app /Applications/QGIS\ LTR\ 2.app