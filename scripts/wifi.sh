#!/bin/sh

ssid=$(iwgetid -r 2>/dev/null)

if [ -n "$ssid" ]; then
    echo ""
else
    echo ""
fi

