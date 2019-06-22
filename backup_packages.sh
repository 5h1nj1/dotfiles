#!/bin/sh

# the same thing
pacman -Qqe | grep -v "$(pacman -Qmq)" > pkglist$(date +%Y%m%d).list
#yay -Qqe | grep -v "$(yay -Qmq)" > pkglist$(date +%Y%m%d).list
