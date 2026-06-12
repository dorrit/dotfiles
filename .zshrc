export ZSH="$HOME/.oh-my-zsh"
#
# # zsh theme
ZSH_THEME="gozilla"

# git
plugins=(git)
# eval "$(ssh-agent -s)"
# ssh-add ~/.ssh/ucuppppp

source $ZSH/oh-my-zsh.sh

# atuin
export ATUIN_NOBIND="true"
eval "$(atuin init zsh)"

# search (ctrl-r)
bindkey '^r' atuin-search

# up-arrow (ada 2 escape sequence tergantung terminal)
bindkey '^[[A'  atuin-up-search
bindkey '^[OA'  atuin-up-search

# down-arrow (tambahan, supaya konsisten)
bindkey '^[[B'  atuin-down-search
bindkey '^[OB'  atuin-down-search

# ctrl+n / ctrl+p bindkey '^N'    atuin-down-search bindkey '^P'    atuin-up-search

# zoxide
eval "$(zoxide init zsh)"
alias cd="z"

# eza 
alias ls="eza --icons=always"

# thefuck
eval $(thefuck --alias)

# vpn
alias vpn-up='sudo wg-quick up germany'
alias vpn-down='sudo wg-quick down germany' 
alias vpn-status='sudo wg show'

# alias ssh
alias ssh-server='ssh -i ~/.ssh/server'

clear

eval "$($HOME/.local/bin/mise activate zsh)"
export PATH="$HOME/.cargo/bin:$PATH"


# bun completions
[ -s "/home/dorrit/.bun/_bun" ] && source "/home/dorrit/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="$HOME/.npm-global/bin:$PATH"

# OpenClaw Completion
source "/home/dorrit/.openclaw/completions/openclaw.zsh"

# opencode
export PATH=/home/dorrit/.opencode/bin:$PATH

. "$HOME/.local/share/../bin/env"
