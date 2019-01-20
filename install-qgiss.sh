#!/usr/bin/env bash

set -v # verbose, to echo the commands in the shell, not just the output. 
brew uninstall qgis
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
brew unintall qgis-ltr
brew install qgis-ltr \
	--with-grass \
	--with-liblas \
	--with-orfeo6 \
	--with-qspatialite \
	--with-r \
	--with-saga \
	--with-szip