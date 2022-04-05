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
HISTSIZE=100000
SAVEHIST=100000

# Completion
autoload -U compinit; compinit; _comp_options+=(globdots)
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

unsetopt beep           # No beeps
unsetopt menu_complete  # Show options instead of insert completely
unsetopt flow_control   # Output flow control via start/stop characters (usually assigned to ^S/^Q) is disabled in the shell’s editor 

setopt auto_menu                # Automatically use menu completion after the second consecutive request for completion
setopt always_to_end            # Move cursor to end of the end word when completion is performed
setopt complete_in_word         # Move cursor to end the of the word when completion is started (might be unnecessary tbh)
setopt hist_expire_dups_first   # Remove dups first from the history
setopt hist_ignore_dups         # Do not save in history if it's the same as the previous
setopt hist_ignore_space        # Ignore if the first character is a space
setopt globdots
setopt hist_ignore_all_dups     # Do not put duplicated command into history list
setopt hist_save_no_dups        # Do not save duplicated command
setopt hist_reduce_blanks       # Remove unnecessary blanks
setopt hist_verify              #
setopt inc_append_history       # 

bindkey -e
bindkey '^[[7~' beginning-of-line # Home in my keyboard
bindkey '^[[8~' end-of-line       # End " " "

# Alias

alias ls="ls -h --color='auto'"
alias ll='ls -alF'
alias la='ls -A'
alias suck='rm -f config.h && sudo make install'
#alias nv='nvim'
alias n='nnn'
alias vim='nvim'
alias apt='/usr/bin/apt'
#alias mateme='sudo apt remove --purge "fcitx*" -y ; rm -rfv .config/fcitx .mozc ; sudo apt autoremove -y'
#alias xev="xev | awk -F'[ )]+' '/^KeyPress/ { a[NR+2] } NR in a { printf "%-3s %s\n", $5, $8 }'"

source $HOME/.config/zsh/zsh-as/zsh-autosuggestions.zsh
source $HOME/.config/zsh/zsh-sh/zsh-syntax-highlighting.zsh
