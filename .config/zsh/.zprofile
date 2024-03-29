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

# Default apps
export EDITOR='nvim'
export VISUAL='nvim'
export TERMINAL='st'
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
export NNN_PLUG='v:preview-tabbed'
export NNN_TMPFILE='/tmp/.lastd'

# fix some zsh error character not in range
export LC_ALL=en_US.UTF-8

# prevents mpv from freezing my computer (?)
export MESA_LOADER_DRIVER_OVERRIDE=i965
