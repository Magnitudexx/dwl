#!/bin/sh

swaybg -i ~/wallpaper/wp5102697-neon-retro-city-ps4-wallpapers.jpg &
waybar &
swayidle -w \
timeout 300 'swaylock -f -i $wallpaper' \
timeout 305 'swaymsg "output * dpms off"' \
resume 'swaymsg "output * dpms on"'\
before-sleep 'swaylock -f -i $wallpaper' &
mako &

