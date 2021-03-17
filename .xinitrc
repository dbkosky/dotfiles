#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresouces=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

xrdb ~/.Xresources
xsetroot -cursor_name left_ptr

# Set display layout
$HOME/.screenlayout/display.sh 

# Launch polybar
# polybar top &
# polybar topext &

setxkbmap -layout us &

picom &
exec bspwm
