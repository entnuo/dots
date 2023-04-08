#!/bin/bash

# a few things i would want to install after finishing installing my system

# packages orders:
#
# A-F
# G-L
# M-R
# S-Z

# some things to consider:
# intel-ucode will be installed, so remember to run `sudo grub-mkconfig -o /boot/grub/grub.cfg`
# and tlp will be as well, so enable/start it (tlp.service)

sudo pacman -S discord dmenu dunst fcitx5 fcitx5-qt fcitx5-gtk fcitx5-mozc feh ffmpeg firefox \
    gufw intel-ucode keepassxc libsixel \
    mpv nnn numlockx network-manager-applet neovim noto-fonts noto-fonts-cjk noto-fonts-extra openbox pandoc-cli pavucontrol picom polybar pulseaudio pulseaudio-alsa pulsemixer redshift rofi \
    scrot tlp thunar ttf-font-awesome ttf-joypixels ttf-liberation wine xfce4-power-manager xsettingsd yt-dlp zathura zathura-pdf-mupdf zsh

yay -S obconf ttf-symbola ttf-vlgothic hypnotix betterlockscreen nsxiv xfce4-volumed
