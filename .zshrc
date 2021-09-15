# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob
#setting vi mode in zsh
bindkey -v
export KEYTIMEOUT=1
function zle-line-init zle-keymap-select {
    VIM_PROMPT="%{$fg_bold[white]%}[NORMAL]"
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
export PATH="$HOME/scripts:$PATH"
export PATH="/home/jose/.gem/ruby/2.7.0/bin:$PATH"
export PATH="$HOME/IJ/idea-IC-203.7148.57/bin:$PATH"
export PATH="$HOME/Projetos:$PATH"
export PATH="$HOME/.cabal/bin:$PATH"

PS1=' %F{%(?.136.160)}%B%~%b%f '$'\U1f9ed'' '

setopt COMPLETE_ALIASES
autoload -Uz promptinit
promptinit

alias v="nvim"
alias ssh_search="ssh a93163@search.di.uminho.pt"
alias cdt="uni 2 1 && cd CD/Trabalho"
alias deb="build/debug/shafa"
alias ls="exa --icons"
alias li3="uni LI3 && cd PL/Trabalho/project_java"
alias poo="uni POO && cd Trabalho"
alias so="uni SO && cd trabalho"
alias pdf="zathura"
alias update-grub="grub-mkconfig -o /boot/grub/grub.cfg"
#Funny trick but not sure if there is a prettier way of using sudo with aliases
alias sudo="sudo "

dualscreen () {
	if [[ "$1" == "default" ]]; then
       xrandr --output DP-4 --auto --output HDMI-0 --auto --left-of DP-4
    	elif [[ "$1" == "above" ]]; then
	xrandr --output DP-4 --auto --output HDMI-0 --auto --above DP-4
	elif [[ "$1" == right ]];then
	xrandr --output DP-4 --auto --output HDMI-0 --auto --right-of DP-4

    	else xrandr --output $1 --auto --output $2 --auto --$3-of $1
	
    	fi
    #calling nitrogen since it doesn't seem to update automatically
    nitrogen --restore
}
#Goes to the university directory
uni () {
	cd "$(find $HOME/Universidade/ -type d -name $1 | head -1)"
}

#Does a cd from the Project directory
cdpr () {
	cd "$(find $HOME/Projetos/ -type d -iname "*$1*" | head -1)"
}

#Goes to the pratice exercises directory of a specific class and lesson number
pl () {
	cd  "$(find $HOME/Universidade/ -type d -name $1 | head -1)" && cd PL/PL$2
}

b () {
	xrandr --output DP-4 --brightness $1
}

#asdf
. $HOME/.asdf/asdf.sh 

alias config="/usr/bin/git --git-dir=/home/jose/dotfiles --work-tree=/home/jose"

#fzf
export FZF_DEFAULT_OPT="fzf "
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="--layout=reverse --border --padding=1 \
	--preview '(highlight -O ansi -l {} 2> /dev/null || bat {} || tree -C {}) 2> /dev/null | head -200'"

source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -200'"


export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cabal/bin:$HOME/.ghcup/bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
