#!/bin/bash
DOWNLOADDIR=./usbdrive/requirements/
COMPASSDIR=./usbdrive/mongodb/compass
MONGODBDIR=./usbdrive/mongodb/server
rm -rf $DOWNLOADDIR
rm -rf $COMPASSDIR
rm -rf $MONGODBDIR
mkdir -p $DOWNLOADDIR
mkdir -p $COMPASSDIR
mkdir -p $MONGODBDIR
echo "# TODO" > $DOWNLOADDIR/README.md
echo "# TODO" > $COMPASSDIR/README.md
echo "# TODO" > $MONGODBDIR/README.md
