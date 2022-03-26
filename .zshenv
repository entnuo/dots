typeset -U PATH path
export GTK_IM_MODULE='fcitx'
export QT_IM_MODULE='fcitx'
export SDL_IM_MODULE='fcitx'
export XMODIFIERS='@im=fcitx'

ZDOTDIR=$HOME/.config/zsh

export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}

export LESSHISTFILE=-

path+=$HOME/Documents/scripts/

export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc-2.0

export EDITOR='nvim'
export VISUAL='nvim'
export TERMINAL='st'
export BORWSER='firefox'
export VIDEO='mpv'
export IMAGE='sxiv'
export OPENER='xdg-open'
export READER='zathura'
export PAGER='less'
export COLORTERM='truecolor'
