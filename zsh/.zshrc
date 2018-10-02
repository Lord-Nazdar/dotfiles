source ~/.zsh/antigen.zsh

antigen bundle chrissicool/zsh-256color

antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure

antigen bundle zsh-users/zsh-syntax-highlighting

antigen bundle tmuxinator/tmuxinator

antigen apply

eval `dircolors`

# source ~/.zsh/tmux.zsh
source ~/.zsh/aliases.zsh
source ~/.zsh/functions.zsh
source ~/.zsh/docker.zsh

source ~/.zsh/secret.zsh

export EDITOR='vim'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
