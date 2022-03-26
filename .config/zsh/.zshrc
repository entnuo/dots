# Lines configured by zsh-newuser-install

PROMPT="%B%F{#4d8fac}%n%f %F{#ff4e20}%~%f $%b "
#RPROMPT="%B[%F{ff4e20}%n %~%f]%b "

# function to return current branch name while suppressing errors.
#function git_branch() {
#    branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
#    if [[ $branch == "" ]]; then
#        :
#    else
#        echo ' (' $branch ') '
#    fi
#}
#
#setopt prompt_subst             # allow command substitution inside the prompt
#PROMPT='%B%F{#4d8fac}%n%f %F{#ff4e20}%~%f $(git_branch) $%b '     # set the prompt value

HISTFILE=~/.config/zsh/.zsh_zhistory
HISTSIZE=10000
SAVEHIST=10000

autoload -U compinit; compinit; _comp_options+=(globdots)
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

unsetopt beep
unsetopt menu_complete
unsetopt flow_control

setopt auto_menu
setopt always_to_end
setopt complete_in_word
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt globdots

bindkey -e
bindkey '^[[7~' beginning-of-line
bindkey '^[[8~' end-of-line

alias ls="ls -h --color='auto'"
alias ll='ls -alF'
alias la='ls -A'
#alias nv='nvim'
alias suck='rm -f config.h && sudo make install'
#alias mateme='sudo apt remove --purge "fcitx*" -y ; rm -rfv .config/fcitx .mozc ; sudo apt autoremove -y'
alias n='nnn'
alias vim='nvim'
alias apt='/usr/bin/apt'
#alias xev="xev | awk -F'[ )]+' '/^KeyPress/ { a[NR+2] } NR in a { printf "%-3s %s\n", $5, $8 }'"

source $HOME/.config/zsh/zsh-as/zsh-autosuggestions.zsh
source $HOME/.config/zsh/zsh-sh/zsh-syntax-highlighting.zsh
# End of lines configured by zsh-newuser-install
