source ~/.zsh/antigen.zsh

antigen bundle chrissicool/zsh-256color

antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure

antigen bundle zsh-users/zsh-syntax-highlighting

antigen apply

eval `dircolors`

source ~/.zsh/tmux.zsh
source ~/.zsh/aliases.zsh
source ~/.zsh/functions.zsh

export EDITOR='vim'
