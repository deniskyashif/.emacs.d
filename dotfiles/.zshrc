# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/denis/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

# ZSH_THEME="bureau"
ZSH_THEME="af-magic"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='ecs'
else
  export EDITOR='emacs -nw'
fi

export GOPATH=$HOME/go

# Command autocomplete
autoload bashcompinit
bashcompinit
source /usr/local/etc/bash_completion.d/*

# zsh parameter completion for the dotnet CLI
_dotnet_zsh_complete() 
{
  local completions=("$(dotnet complete "$words")")

  reply=( "${(ps:\n:)completions}" )
}

compctl -K _dotnet_zsh_complete dotnet

# Aliases
alias ecs="emacs -nw -q"
alias zshconfig="ecs ~/.zshrc"
alias ohmyzsh="ecs ~/.oh-my-zsh"
alias cls=clear
alias pf="ps -e | grep $1"
alias dnr="dotnet run"
alias dnwr="dotnet watch run"
alias dnt="dotnet test"
alias dnwt="dotnet watch test"
alias md=mkdir
