#!/bin/dash

# source xinitc.d scripts
if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# this makes some programs (mostly the ones which use gtk) load faster
#dbus-update-activation-environment --systemd DBUS_SESSION_BUS_ADDRESS DISPLAY XAUTHORITY 

# replace useless fn keys to their respective keys
xmodmap $HOME/.Xmodmap &

setxkbmap -layout br -option compose:caps &
xset s 1200 600 &
xset dpms 2400 6600 6605 &
xset +fp $HOME/.local/share/fonts &
xset +fp $HOME/.fonts &
xset fp rehash &
numlockx on &
#$HOME/.scripts/mouse-sets &
xrdb .Xresources &
picom -b

#exec bspwm

while type dwm >/dev/null ; do dwm && continue || break ;done 
