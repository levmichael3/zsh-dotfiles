# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi



# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git kubectl docker helm terraform zsh-completions zsh-autosuggestions zsh-syntax-highlighting history-substring-search extract z sudo fzf-tab)

source $ZSH/oh-my-zsh.sh

# Source ezsh custom configuration
if [[ -f ~/.config/ezsh/ezshrc.zsh ]]; then
  source ~/.config/ezsh/ezshrc.zsh
fi

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
[ -s "/Users/michael/.bun/_bun" ] && source "/Users/michael/.bun/_bun"
export PATH=/Users/michael/.opencode/bin:$PATH
[ -s "$HOME/.kubectl_aliases" ] && source "$HOME/.kubectl_aliases"
export PATH="/Users/michael/bin:${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

# Option key word navigation
bindkey "^[[1;3C" forward-word     # Option + Right Arrow
bindkey "^[[1;3D" backward-word    # Option + Left Arrow
bindkey '\e^?' backward-kill-word  # Option + Backspace
export PATH="/opt/local/bin:$PATH"

# DevOps Aliases
alias tf='terraform'
alias tg='terragrunt'
alias k='kubectl'
alias kx='kubectx'
alias kn='kubens'
alias d='docker'
alias dc='docker-compose'
alias h='helm'
alias k9='k9s'

# Terraform shortcuts
alias tfp='terraform plan'
alias tfa='terraform apply'
alias tfd='terraform destroy'
alias tfi='terraform init'
alias tfw='terraform workspace'

# Git shortcuts
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git pull'
alias gd='git diff'
alias gco='git checkout'
alias gb='git branch'

# Quick navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ~='cd ~'

# Useful functions
# Quick kubernetes context switch
unalias kctx 2>/dev/null
kctx() {
  kubectl config use-context "$1"
}

# Quick namespace switch
unalias kns 2>/dev/null
kns() {
  kubectl config set-context --current --namespace="$1"
}

# Show current k8s context
unalias kcurrent 2>/dev/null
kcurrent() {
  kubectl config current-context
  echo "Namespace: $(kubectl config view --minify --output 'jsonpath={..namespace}')"
}

# =====================

# =====================
# AWS Profile Aliases
# =====================

alias awsp='export AWS_PROFILE'
alias awsprof='echo "Current AWS Profile: ${AWS_PROFILE:-${AWS_DEFAULT_PROFILE:-default}}"'
alias awsc='aws sts get-caller-identity'

# Quick profile switchers (customize these)
alias aws-dev='export AWS_PROFILE=dev'
alias aws-prod='export AWS_PROFILE=prod'
alias aws-test='export AWS_PROFILE=test'
alias aws-uat='export AWS_PROFILE=uat'

# List available profiles
aws-profiles() {
  echo "Available AWS Profiles:"
  if [[ -f ~/.aws/credentials ]]; then
    grep '^\[' ~/.aws/credentials | tr -d '[]' | while read profile; do
      if [[ "$profile" == "${AWS_PROFILE:-default}" ]]; then
        echo "  * $profile (current)"
      else
        echo "    $profile"
      fi
    done
  fi
}
export PATH="$HOME/.local/aws-cli:$PATH"

# =====================
# Kubernetes Quick Switch
# =====================

# k3d cluster shortcuts
alias k3d-dev='kubectl config use-context k3d-dev-cluster'
alias k3d-prod='kubectl config use-context k3d-prod-cluster'

# Create namespaces for testing
k8s-ns() {
  kubectl get namespaces
}

# Quick namespace switch
k8s-use-ns() {
  kubectl config set-context --current --namespace="$1"
}

# =====================
# Kubecolor - Colored kubectl
# =====================

# Use kubecolor for all kubectl commands (with raw output flag support)
alias kubectl='kubecolor'
alias k='kubecolor'

# For when you need raw output (CI, scripts, etc.)
alias kraw='command kubectl'
