setterm -blength 0

alias dc=docker-compose
alias dc=docker-compose
alias dcbuild="docker-compose up -d --build"
alias dcdown="docker-compose down"
alias dcdownv="docker-compose down -v"
alias dcrm="docker rm -f '$(docker ps -a -q)' && docker volume prune -f"
