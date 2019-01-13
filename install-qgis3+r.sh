#!/usr/bin/env bash

set -v # verbose, to get the commands in the shell, not just the output. 
brew uninstall qgis3 
brew unlink pyqt-qt4
brew install qgis3 --with-grass --with-saga-gis-lts --with-r 
brew link pyqt-qt4
brew uninstall --ignore-dependencies r 
brew uninstall --ignore-dependencies cairo
brew install sethrfore/r-srf/cairo
brew install sethrfore/r-srf/r --with-openblas --with-java --with-libtiff --with-cairo