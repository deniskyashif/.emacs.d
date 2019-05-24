alias dc=docker-compose
alias dc=docker-compose
alias dcbuild="docker-compose up -d --build"
alias dcdown="docker-compose down"
alias dcdownv="docker-compose down -v"
alias dcrm="docker rm -f '$(docker ps -a -q)' && docker volume prune -f"
alias ecs="emacs -nw -q"
alias cls=clear
alias pf="ps -e | grep $1"

export PATH=$PATH:$HOME/Library/Python/2.7/bin
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF8-

# Powerline
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
source /usr/local/lib/python3.7/site-packages/powerline/bindings/bash/powerline.sh

# colors
PS1='\w\[\033[0;32m\]$( git branch 2> /dev/null | cut -f2 -d\* -s | sed "s/^ / [/" | sed "s/$/]/" )\[\033[0m\] \$ '

# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

# Tell ls to be colourful
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad
