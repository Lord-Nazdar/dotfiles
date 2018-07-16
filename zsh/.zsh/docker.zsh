# Stop and clean all unused containers
alias dk='docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)'
