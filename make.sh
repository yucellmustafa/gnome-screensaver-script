#!/bin/bash

make=$1

if [ $make = "install" ]; then
    cp gscreensaver /usr/bin/
    cp idle-time.py /usr/bin/
elif [ $make = "uninstall" ]; then
    rm /usr/bin/gscreensaver
    rm /usr/bin/idle-time.py
else
    echo "Usage: sudo ./make.sh install|uninstall"
fi
