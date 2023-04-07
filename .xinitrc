#!/bin/bash

# source xinitc.d scripts
if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# this makes some programs (mostly the ones which use gtk) load faster
dbus-update-activation-environment --systemd DBUS_SESSION_BUS_ADDRESS DISPLAY XAUTHORITY &

setxkbmap -layout br -option compose:caps &
numlockx on &
$HOME/.scripts/mouse-sets &
xrdb .Xresources &
picom --vsync --backend glx -b &

#exec xfce4-session
#exec openbox-session
exec bspwm
