#!/bin/sh
swaybg -i ~/wallpaper/wp5102697-neon-retro-city-ps4-wallpapers.jpg &
swayidle -w \
timeout 300 'swaylock -f -i $wallpaper' \
timeout 305 'swaymsg "output * dpms off"' \
resume 'swaymsg "output * dpms on"'\
before-sleep 'swaylock -f -i $wallpaper' &
mako &
tee | ./dwlwrapper.sh &
waybar &



