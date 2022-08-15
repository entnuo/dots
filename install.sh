#!/bin/sh
# automatizing everything cuz im lazy

echo 'copying .Xresources, .xinitrc and .zshenv to home'
cp .Xresources $HOME/
cp .xinitrc $HOME/
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

echo -e 'copying .fonts to $HOME/.fonts and updating font cache'
cp -r .fonts/jetbrains-mono $HOME/.fonts/ && fc-cache -f
echo -e 'done\n'

# hard linking .config so it's easy to make changes and keep both dots and ~/.* updated
# if you want to hard link the files, uncomment the `ln` commands and comment out the `cp` commands
# i just remembered that you can't hard link if the file already exist...

#echo 'hard linking files'
# dunst
#ln $PWD/.config/dunst/dunstrc $HOME/.config/dunst/dunstrc

# neovim
#ln $PWD/.config/nvim/init.vim $HOME/.config/nvim/init.vim

# openbox
#ln $PWD/.config/openbox/autostart $HOME/.config/autostart
#ln $PWD/.config/openbox/menu.xml $HOME/.config/menu.xml
#ln $PWD/.config/openbox/rc.xml $HOME/.config/rc.xml

# rofi
#ln $PWD/.config/rofi/config.rasi $HOME/.config/rofi/config.rasi

# tint2
#ln $PWD/.config/tint2/dark.tint2rc $HOME/.config/tint2/dark.tint2rc
#ln $PWD/.config/tint2/repentance.tint2rc $HOME/.config/tint2/repentance.tint2rc

# zsh
#ln $PWD/.config/zsh/.zlogin $HOME/.config/zsh/.zlogin
#ln $PWD/.config/zsh/.zshrc $HOME/.config/zsh/.zshrc
#ln $PWD/.config/zsh/aliases $HOME/.config/zsh/aliases

# .Xresources
#ln $PWD/.Xresources $HOME/.Xresources

# .zshenv
#ln $PWD/.zshenv $HOME/.zshenv

echo 'all done, enjoy'
