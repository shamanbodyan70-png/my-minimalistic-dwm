  GNU nano 7.2                                                                                          lang.sh                                                                                                    
#!/bin/sh

layout=$(setxkbmap -query | awk '/layout/{print $2}')
variant=$(setxkbmap -query | awk '/variant/{print $2}')

# если используется grp:alt_shift_toggle — variant обычно пуст
# тогда берём текущий через xkb-state / xset

current=$(xset -q | awk '/LED/{print $10}')

if [ "$current" = "00000002" ]; then
    echo "RU"
else
    echo "EN"
fi

