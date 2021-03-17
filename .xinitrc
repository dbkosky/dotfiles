#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresouces=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# Wallpapers location
wallpaper_double=$HOME/wallpapers/water/sea-double-monitor.jpg
wallpaper_single=$HOME/wallpapers/water/sea-single-monitor.jpg

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

xrdb ~/.Xresources
xsetroot -cursor_name left_ptr

# Set display layout
if [ "$(xrandr | grep [[:space:]]connected | wc -l)" -eq "2" ]; then
  $HOME/.screenlayout/display_double.sh
  
  # Set wallpaper for double screen setup (with second monitor above)
  nitrogen --set-auto $wallpaper_double
else 
  $HOME/.screenlayout/display_single.sh

  # Set wallpaper for single screen setup
  nitrogen --set-auto $wallpaper_single
fi

setxkbmap -layout us &

picom &
exec bspwm
