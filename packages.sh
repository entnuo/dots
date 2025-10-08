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

sudo pacman -S bspwm dash discord dunst fcitx5 fcitx5-qt fcitx5-gtk fcitx5-mozc feh ffmpeg firefox \
    gitui gufw intel-ucode keepassxc libsixel \
    mpv nnn numlockx neovim noto-fonts-cjk pandoc-cli pavucontrol picom pipewire redshift \
    scrcpy scrot stow sxhkd texlive-basic tlp ttf-joypixels ttf-liberation wine xdo yt-dlp zathura zathura-pdf-mupdf zsh

#paru -S betterlockscreen \
paru -S hypnotix lemonbar-xft-git light \
    nsxiv siji-git \
    tabbed-git ttf-vlgothic xtitle

# plugins for nnn
sh -c "$(curl -Ls https://raw.githubusercontent.com/jarun/nnn/master/plugins/getplugs)"
