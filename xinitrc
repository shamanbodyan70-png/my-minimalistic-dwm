#!/bin/sh

setxkbmap -layout us,ru -option grp:alt_shift_toggle &

feh --bg-fill "/your/directory/to/file.jpeg" &

dwmblocks &

exec dwm

