#!/bin/bash

setxkbmap -layout br &
numlockx on &
$HOME/.scripts/mouse-sets &
xrdb .Xresources &
xiccd &

#exec xfce4-session
exec openbox-session
