typeset -U PATH path
export GTK_IM_MODULE='fcitx'
export QT_IM_MODULE='fcitx'
export SDL_IM_MODULE='fcitx'
export XMODIFIERS='@im=fcitx'

# Move zsh files to .config
ZDOTDIR=$HOME/.config/zsh

# XDG paths
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}

# Disable file
export LESSHISTFILE=-

# Some paths
path+=$HOME/.scripts/:$HOME/Documents/android/platform-tools/

# Fixing path
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc

# Default apps
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

# set PATH so it includes user's private ~/.local/bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
