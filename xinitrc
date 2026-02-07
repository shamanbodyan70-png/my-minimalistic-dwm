#!/bin/sh

setxkbmap -layout us,ru -option grp:alt_shift_toggle &

feh --bg-fill "/home/shaman/wallpapers/vagabond.jpeg" &

dwmblocks &

exec dwm

