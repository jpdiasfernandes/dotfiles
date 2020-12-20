# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob
#setting vi mode in zsh
bindkey -v
export KEYTIMEOUT=1
function zle-line-init zle-keymap-select {
    VIM_PROMPT="%{$fg_bold[white]%}[ESC]"
    RPROMPT="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/[INS]}"
    zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select


# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/jose/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
#

#------ME------#
export LANG=pt_PT.UTF-8
export PATH="$HOME/.emacs.d/bin:$PATH"
export PATH="$HOME/Projetos/conways_game:$PATH"
export PATH="$HOME/scripts:$PATH"

PS1='%F{white}%B%~%b%f '$'\U1f9ed'' '

setopt COMPLETE_ALIASES
autoload -Uz promptinit
promptinit

alias v="nvim"
alias ssh_search="ssh a93163@search.di.uminho.pt"

dualscreen () {
    if [[ "$1" == "default" ]]; then
       xrandr --output DP-4 --auto --output HDMI-0 --auto --left-of DP-4
    elif [[ "$1" == "above" ]]; then
	xrandr --output DP-4 --auto --output HDMI-0 --auto --above DP-4
    else xrandr --output $1 --auto --output $2 --auto --$3-of $1
	
    fi
}
uni () {
	cd $HOME/Universidade/$1ano$2sem/
}

#asdf
. $HOME/.asdf/asdf.sh 

alias config="/usr/bin/git --git-dir=/home/jose/dotfiles --work-tree=/home/jose"
