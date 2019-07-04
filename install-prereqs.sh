#!/bin/sh
# Install necessary components to let us use a virtualenv for the python mongodb workshop
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
pip install virtualenv
pip install virtualenvwrapper
