#!/bin/bash

make=$1

if [ $make == "install"]; then
    sudo cp gscreensaver /usr/bin/
    sudo cp idle-time.py /usr/bin/
elif [ $make == "uninstall"]; then
    sudo rm /usr/bin/gscreensaver
    sudo rm /usr/bin/idle-time.py
fi
else
    echo "Usage: make.sh install|uninstall"
fi