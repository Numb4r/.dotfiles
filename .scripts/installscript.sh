#!/bin/sh
if [ ! $UID -eq 0 ]; then
    echo "You dont have permission"
    exit -1
fi
cp `pwd`/$1 /usr/local/bin