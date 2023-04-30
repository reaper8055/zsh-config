# Created by Zap installer
[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"

# Plugins
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zap-zsh/exa" # this plugin needs to be after zap-zsh/supercharge as per https://github.com/zap-zsh/exa/issues/3
plug "zsh-users/zsh-syntax-highlighting"
plug "jeffreytse/zsh-vi-mode"
plug "hlissner/zsh-autopair"

# starship.rs
eval "$(starship init zsh)"

