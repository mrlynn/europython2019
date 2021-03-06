#!/bin/bash
# this script downloads all necessary requirements for the workshop and puts them in a directory structure 
# that can be written to a usbkey
PIP=/usr/local/bin/pip
WGET=/usr/local/bin/wget
DOWNLOADDIR=./usbdrive/requirements/
SOURCEFILES=./files
TARGETFILES=./usbdrive
COMPASSDIR=./usbdrive/mongodb/compass
MONGODBDIR=./usbdrive/mongodb/server
PYTHONDIR=./usbdrive/python
REQUIREMENTSFILE=./requirements.txt
$PIP download -d $DOWNLOADDIR --find-links $DOWNLOADDIR --platform :all: --no-deps -r $REQUIREMENTSFILE
for ddir in $DOWNLOADDIR $COMPASSDIR $MONGODBDIR $PYTHONDIR ; do
   mkdir -p $ddir
done
$WGET https://downloads.mongodb.com/compass/mongodb-compass-community-1.18.0-darwin-x64.dmg
$WGET https://downloads.mongodb.com/compass/mongodb-compass-community-1.18.0-win32-x64.exe
$WGET https://downloads.mongodb.com/compass/mongodb-compass-community-1.18.0-win32-x64.msi
$WGET https://fastdl.mongodb.org/src/mongodb-src-r4.0.10.tar.gz
$WGET https://fastdl.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.10-signed.msi
$WGET https://www.python.org/ftp/python/3.7.3/python-3.7.3.exe
$WGET https://www.python.org/ftp/python/3.7.3/python-3.7.3-macosx10.9.pkg
cp $SOURCEFILES/* $TARGETFILES
mv mongodb-compass* $COMPASSDIR
mv mongodb* $MONGODBDIR
mv python* $PYTHONDIR
