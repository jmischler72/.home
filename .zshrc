if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
export LC_ALL=en_US.UTF-8 
export LANG=en_US.UTF-8

ZSH_THEME="powerlevel10k/powerlevel10k"

unsetopt beep

plugins=(
  docker
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  minikube
  kubectl
  helm
  terraform
  argocd
  aws
  k3d
  eza
)

source $ZSH/oh-my-zsh.sh

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export GPG_TTY=$(tty)
export PATH=/usr/local/bin/:$PATH 
source <(fzf --zsh)

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Created by `pipx` on 2025-03-03 15:16:05
export PATH="$PATH:/Users/utilisateur/.local/bin"

alias pls="sudo"

# Go Path
export GOPATH=$HOME/go
export GOROOT=/usr/local/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOPATH:$GOBIN
export PATH="/usr/local/opt/libpq/bin:$PATH"

# ASP Aliases

awsid() {
  if ! aws sts get-caller-identity &>/dev/null; then
    echo "Not authenticated. Running SSO login..."
    aws sso login
  fi
}

alias asps="awsid && asp devops-shared"
alias aspP="awsid && asp devops-prod"
alias aspp="awsid && asp devops-preprod"
