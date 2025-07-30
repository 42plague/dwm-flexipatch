#!/bin/sh

if [ "$1" = "-f" ]; then
    killall unclutter
    scrot "$HOME/Pictures/Screenshots/FS-%d-%m-%Y-%H:%M:%S.png" -z
    exit 0
elif [ "$1" = "-s" ]; then
    killall unclutter
    scrot -s -f "$HOME/Pictures/Screenshots/SEL-%d-%m-%Y-%H:%M:%S.png" -z
    exit 0
else
    echo "Usage: $0 [-f | -s]"
    exit 1
fi
