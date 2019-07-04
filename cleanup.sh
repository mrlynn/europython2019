#!/bin/bash
DOWNLOADDIR=./usbdrive/requirements/
COMPASSDIR=./usbdrive/mongodb/compass
MONGODBDIR=./usbdrive/mongodb/server
PYTHONDIR=./usbdrive/python
for ddir in $DOWNLOADDIR $COMPASSDIR $MONGODBDIR $PYTHONDIR; do
  echo $ddir
  rm -rf $ddir
  mkdir -p $ddir
  echo "# Preserve" > $ddir/README.md
done
