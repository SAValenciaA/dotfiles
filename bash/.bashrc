
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# ALIASES

# BECAUSE U STUPID
alias rm='trash'

#  LS ALIASES
alias ls='eza'
alias ll='eza --no-user -l'
alias la='eza --no-user -Al'
alias lt='eza --no-user -l --sort newest'
alias labc='eza --no-user -l --sort name'
alias lext='eza --no-user -l --sort extension'

# PACMAN
alias pacmanSyu='sudo pacman -Syu'
alias pacmanSs='pacman -Ss'

#  CD ALIASES
alias ..="cd ../"
alias ...="cd ../../"
alias ....="cd ../../../"
alias .....="cd ../../../../"

#  ADDING FLAGS
alias grep='grep --color=auto'
alias cp='cp -i'
alias frtrans="trans -show-original n -show-translation n -show-languages n -show-dictionary n -show-prompt-message n fr:en"

# SHORT VERSION
alias n="nvim"
alias bashrc="nvim ~/.bashrc"
alias sunvim="sudo nvim"
alias py="python3 $1"

# RENAMING ALIASES
alias battery='upower -i /org/freedesktop/UPower/devices/battery_BAT0'
alias kimg="kitten icat"
alias copy="waycopy"


# PROMPT DECORATION
eval "$(starship init bash)"

# ENV VARIABLES
export EDITOR=nvim
export BROWSER=firefox

# PATH
BIN=:/home/sergio/.local/bin
PISTOL=:/home/sergio/go/bin/pistol
PERSONAL_BIN=:/home/sergio/.bin/
export PATH="$PATH$BIN$BASHLY$VIT3$AGENDA$PISTOL$PERSONAL_BIN"

# LF ICONS
source ~/.bash_lf_icons

# NEOVIM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


