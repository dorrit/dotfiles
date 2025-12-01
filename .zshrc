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

# ctrl+n / ctrl+p
bindkey '^N'    atuin-down-search
bindkey '^P'    atuin-up-search

# zoxide
eval "$(zoxide init zsh)"
alias cd="z"

# eza 
alias ls="eza --icons=always"

# thefuck
eval $(thefuck --alias)

# vpn
alias vpn-up='sudo wg-quick up ucup-NL-FREE-49'
alias vpn-down='sudo wg-quick down ucup-NL-FREE-49'
alias vpn-status='sudo wg show'


clear

eval "$(/home/ucup/.local/bin/mise activate zsh)"
