ZSH_THEME="bureau"
# ZSH_THEME="af-magic"

plugins=(
    git
    docker
)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='emacs -nw -q'
else
  export EDITOR='emacs -nw'
fi

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
alias e="emacs -nw -q"
alias zshconfig="e ~/.zshrc"
alias ohmyzsh="e ~/.oh-my-zsh"
alias cls=clear
alias pf="ps -e | grep $1"
alias md=mkdir
alias wrk="cd ~/Workspace"

alias dnr="dotnet run"
alias dnwr="dotnet watch run"
alias dnt="dotnet test"
alias dnwt="dotnet watch test"

alias dkps="docker ps"
alias dkst="docker stats"
alias dkpsa="docker ps -a"
alias dkimgs="docker images"
alias dkcpup="docker-compose up -d"
alias dkcpdown="docker-compose down"
alias dkcpstart="docker-compose start"
alias dkcpstop="docker-compose stop"

alias antlr4='java -Xmx500M -cp "/usr/local/lib/antlr-4.7.1-complete.jar:$CLASSPATH" org.antlr.v4.Tool'
alias grun='java -Xmx500M -cp "/usr/local/lib/antlr-4.7.1-complete.jar:$CLASSPATH" org.antlr.v4.gui.TestRig'
