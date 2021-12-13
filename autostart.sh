#!/bin/sh
wallpaper=$HOME/wallpaper/wp5102697-neon-retro-city-ps4-wallpapers.jpg 
killall waybar
killall mako
swaybg -i $wallpaper &
swayidle -w \
	timeout 300 "swaylock -f -i $wallpaper" \
	before-sleep "swaylock -f -i $wallpaper" &
mako &
tee | ./dwlwrapper.sh &
waybar &



