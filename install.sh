#!/bin/sh
# automatizing everything cuz im lazy

cp -v .Xresources $HOME/
cp -v .zshenv $HOME/

cp -rv .config/dunst $HOME/.config/
cp -rv .config/mpd $HOME/.config/
cp -rv .config/ncmpcpp $HOME/.config/
cp -rv .config/nvim $HOME/.config/
cp -rv .config/zsh $HOME/.config/
cp -rv .config/rofi $HOME/.config/

cp -rv .fonts/jetbrains-mono $HOME/.fonts/ && fc-cache -fv