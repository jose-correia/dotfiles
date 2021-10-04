echo "\"The only way to do great work is to love what you do.\""
echo "- S.J."

if [ -f ~/.privzshrc.sh ]; then
    source ~/.privzshrc.sh
else
    print "Private configurations file not found."
fi

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="/Users/correia/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=( git z zsh-syntax-highlighting zsh-autosuggestions vi-mode )

# User vim commands
bindkey -v

source $ZSH/oh-my-zsh.sh

# User configuration
export GOPATH=$HOME/golang
export GO111MODULE="on"

export PATH=$HOME/bin:/usr/local/bin:$HOME/golang/bin:$PATH
export PATH=$PATH:/usr/local/opt/go/libexec/bin:/opt/apache-maven/bin
export PATH=/usr/local/bin/python3.7:$PATH

export REVIEW_BASE="master"

# You may need to manually set your language environment
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias vim="nvim"
alias v="nvim"
alias e="export"
alias t="touch"
alias kk="k9s"
alias k="kubectl"
alias kgp="kubectl get pods"
alias kgpg="kubectl get pods | grep"
alias kgd="kubectl get deployments"
alias kgdg="kubectl get deployments | grep"
alias kpf="kubectl port-forward"
alias kdp="kubectl describe pod"
alias kdd="kubectl describe deployment"
alias kei="kubectl exec -it"
alias krr="kubectl rollout restart"
alias ksd="kubectl scale deployment"
alias gcb="git checkout -b"
alias gcm="git commit -m"
alias gpf="git push -f"
alias gs="git status"
alias gl="git log"
alias gh="git heatmap" # depends on https://githubmemory.com/repo/jez/git-heatmap
alias review="git review"
alias gri="git rebase -i"
alias gp="git push"
alias ga="git add"
alias dei="docker exec -it"
alias dcu="docker-compose up"
alias dps="docker ps"
alias dcps="docker-compose ps"

# functions
function encode() {
    echo -n "$1" | base64
}

function decode() {
    echo "$1" | base64 --decode
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
