#!/bin/bash

###########################
# CapsLock を Ctrl にする #
###########################

XPROFILE="$HOME/.xprofile"

echo "setxkbmap -option ctrl:nocaps" >> $XPROFILE

echo "done."
