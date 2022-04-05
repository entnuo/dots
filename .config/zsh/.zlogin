# Autologin after loading .zshrc
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
