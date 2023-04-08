## dotfiles

In `packages.sh` script there are packages I used in my config and some more. It's encouraged to check it before running it. (it uses pacman, packages' names might be different depending on what distro you're using)

`install.sh` basically just copy every config to its respective place in $HOME.

### Programs used

- betterlockscreen
- dmenu
- dunst
- fcitx5
- mpv
- nnn
- neovim
- openbox
- picom
- polybar
- redshift
- scrot
- sxhkd
- xfce4-power-manager
- xfce4-volumed
- zathura
- zsh

### Sxhkd keybinds

- `Super` + `Return` st
- `Control` + `Alt` + `t` st
- `Super` + `Shift` + `e` dmenu_\run_\history (rofi like script available at [suckless.org](https://tools.suckless.org/dmenu/scripts/dmenu_run_with_command_history/)) or dmenu_run
- `Super` + `r` Reload sxhkd
- `Super` + `Shift` + `g` powermenu (script)
- `Super` + `Shift` + `x` Betterlockscreen -l blur
- `XF86AudioRaiseVolume` Volume +2
- `XF86AudioLowerVolume` Volume -2
- `XF86AudioMute` Mute
- `Print` scrot -s (choose screenshot area), open in nsxiv and copy image to clipboard
- `Super` + `Print` scrot (whole screen), open in nsxiv and copy image to clipboard
- `Super` + `k` killprocess (script)
- `Super` + `Alt` + `q` Quit bspwm
- `Super` + `Alt` + `r` Restart bspwm
- `Super` + `Escape` Close window
- `Alt` + `F4` Close window
- `Super` + `t` tiled
- `Super` + `Shift` + `t` pseudo tiled
- `Super` + `Shift` + `s` floating
- `Super` + `Shift` + `f` fullscreen
- `Super` + `{h,j,k,l}` focus in the given direction
- `Super` + `Shift` + `{h,j,k,l}` switch window location
- `Alt` + `Tab` well… alt-tab
- `Super` + `1-6` switch to the given desktop
- `Super` + `Shift` + `1-6` send window to the given desktop and follow it
- `Super` + `Alt` + `{h,j,k,l}` expand window
- `Super` + `Alt` + `Shift` + `{h,j,k,l}` contract window
- `Super` + `{Left,Down,Up,Right}` move floating window
