BIN_DIRECTORY=${HOME}/.bin

source ${BIN_DIRECTORY}/colours.bash
source ${BIN_DIRECTORY}/git_completion.bash

# ~/bin is the location of personal scripts I would like available everywhere
export PATH="${BIN_DIRECTORY}:$PATH"

# need this set to xterm-256color to get proper color support in vim
export TERM='xterm-256color'

alias ls='ls -G'
alias ll='ls -al'
#alias vim='nvim'

export LSCOLORS="GxFxCxDxBxEgEdabagacad"
export GREP_OPTIONS="--color"

# Erase duplicates in history
export HISTCONTROL=erasedups
# Store 10k history entries
export HISTSIZE=10000
# Append to the history file when exiting instead of overwriting it
shopt -s histappend

alias q="exit"

export EDITOR="vim -f"

PS1="\[${WHITE}\]\\u\[$BRIGHT_BLUE\]@\h:\[$BRIGHT_RED\]\w \[${RESET}\]"

if [ -f /usr/local/opt/chruby/share/chruby/chruby.sh ]; then
  source /usr/local/opt/chruby/share/chruby/chruby.sh
fi

if [ -f /usr/local/etc/profile.d/autojump.sh ]; then
  source /usr/local/etc/profile.d/autojump.sh
fi

