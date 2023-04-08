## dotfiles

In `packages.sh` script there are packages I used in my config and some more. It's encouraged to check it before running it. (it uses pacman, packages' names might be different depending on what distro you're using)

`install.sh` basically just copy every config to its respective place in $HOME.

---

### Programs used

- betterlockscreen
- dmenu (not so much as in bspwm config)
- dunst
- fcitx5
- mpv
- nnn
- neovim
- openbox
- picom
- polybar
- redshift
- rofi
- scrot
- tint2 (old config, unused)
- xfce4-power-manager
- xfce4-volumed
- zathura
- zsh

---

### Openbox keybinds

- `Shift` + `Alt` + `Left` Send window to desktop to the left
- `Shift` + `Alt` + `Right` Send window to desktop to the right
- `Super` + `1-5` Switch desktop
- `Super` + `d` Toggle show desktop
- `Alt` + `F4` Close window
- `Super` + `Escape` Close window
- `Alt` + `space` Show menu
- `Print` Scrot -s (choose screenshot area)
- `Super` + `Print` Scrot (screenshot whole screen)
- `Super` + `l` Move to edge east (50%)
- `Super` + `h` Move to edge west (50%)
- `Super` + `Space` Toggle decorations
- `Super` + `Shift` + `l` Betterlockscreen -l blur
- `Super` + `Shift` + `x` Betterlockscreen -l blur
- `Control` + `Alt` + `t` st
- `Super` + `Return` st
- `Super` + `e` rofi -show run
- `Super` + `Shift` + `e` dmenu_\run_\history (rofi like script available at [suckless.org](https://tools.suckless.org/dmenu/scripts/dmenu_run_with_command_history/))
- `Super` + `Shift` + `g` powermenu script
- `Super` + `k` Maximize
- `Super` + `j` Minimize/Iconify
- `Super` + `Left Click` Move window around
- `Super` + `Right Click` Resize window
- `XF86AudioRaiseVolume` Volume +2
- `XF86AudioLowerVolume` Volume -2
- `XF86AudioMute` Mute
