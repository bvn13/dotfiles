#!/bin/bash

#swayidle -w timeout 300 'sh /usr/local/bin/lock' timeout 360 'swaymsg "output * dpms off"' resume 'swaymsg "output * dpms on"' before-sleep 'sh /usr/local/bin/lock'

swayidle -w timeout 300 'sh ~/.scripts/sway/lock.sh' timeout 360 'swaymsg "output * dpms off"' resume 'swaymsg "output * dpms on"' before-sleep 'sh ~/.scripts/sway/lock.sh'
