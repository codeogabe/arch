#!/bin/bash

# This script will randomly go through the files of a directory, setting it
# up as the wallpaper at regular intervals
#
# NOTE: this script is in bash (not posix shell), because the RANDOM variable
# we use is not defined in posix
# Edit below to control the images transition
export SWWW_TRANSITION_FPS=20
export SWWW_TRANSITION_STEP=20

# This controls (in seconds) when to switch to the next image

img=$(find ~/Downloads/wallpapers/ -type f | shuf -n 1)
wal -i $img
swww img "$img"
killall waybar
waybar &


