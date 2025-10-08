#!/bin/zsh

typeset -U PATH path
export GTK_IM_MODULE='fcitx'
export QT_IM_MODULE='fcitx'
export SDL_IM_MODULE='fcitx'
export XMODIFIERS='@im=fcitx'
#export XMODIFIERS='@im=none emacs'

# XDG paths
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}

# Disable file
export LESSHISTFILE=-

# Some paths
path+=$HOME/.scripts/:$HOME/Documents/android/platform-tools/:$HOME/.cargo/bin/

# Fixing path
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export WINEPREFIX="$XDG_DATA_HOME"/wine
#export GIT_CONFIG_GLOBAL=$HOME/.config/git/config

# Default apps
export EDITOR='nvim'
export VISUAL='nvim'
#export TERMINAL='st'
export BROWSER='firefox'
export VIDEO='mpv'
export IMAGE='nsxiv'
export OPENER='xdg-open'
export READER='zathura'
export PAGER='less'
export COLORTERM='truecolor'

# set PATH so it includes user's private ~/.local/bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# nnn fifo and plugins
export NNN_FIFO=/tmp/nnn.fifo
export NNN_COLORS="4137"
export NNN_BMS="v:$HOME/Videos;d:$HOME/Downloads;D:$HOME/Documents;m:$HOME/Music;p:$HOME/Pictures"
export NNN_ARCHIVE="\\.(7z|a|ace|alz|arc|arj|bz|bz2|cab|cpio|deb|gz|jar|lha|lz|lzh|lzma|lzo|rar|rpm|rz|t7z|tar|tbz|tbz2|tgz|tlz|txz|tZ|tzo|war|xpi|xz|Z|zip)$"

# fix some zsh error character not in range
#export LC_ALL=en_US.UTF-8

# fix nnn order style
export LC_COLLATE="en_US.UTF-8"
