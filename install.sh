#!/bin/sh
# automatizing everything cuz im lazy

echo 'copying .Xresources and .zshenv to home'
cp .Xresources $HOME/
cp .zshenv $HOME/
echo -e 'done\n'

echo 'copying .config folders to $HOME/.config'
cp -r .config/dunst $HOME/.config/
cp -r .config/mpd $HOME/.config/
cp -r .config/ncmpcpp $HOME/.config/
cp -r .config/nvim $HOME/.config/
cp -r .config/zsh $HOME/.config/
cp -r .config/rofi $HOME/.config/
cp -r .config/openbox/ $HOME/.config/
cp -r .config/tint2/ $HOME/.config/
echo -e 'done\n'

echo 'copying .icons to $HOME/.icons'
cp -r .icons/dracula/ $HOME/.icons/
echo -e 'done\n'

echo 'copying .themes to $HOME/.themes'
cp -r .themes/ $HOME/.themes/
echo -e 'done\n'

echo -e 'copying .fonts to $HOME/.fonts and updating font cache\n'
cp -r .fonts/jetbrains-mono $HOME/.fonts/ && fc-cache -f
echo 'all done, enjoy'
