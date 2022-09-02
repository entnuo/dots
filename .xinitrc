#!/bin/bash

# source xinitc.d scripts
if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

setxkbmap -layout br &
numlockx on &
$HOME/.scripts/mouse-sets &
xrdb .Xresources &
xiccd &

#exec xfce4-session
exec openbox-session
