# Created by Zap installer
[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"

# ssh-gpg
export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK="/run/user/$UID/gnupg/S.gpg-agent.ssh"
gpg-connect-agent updatestartuptty /bye > /dev/null

# default editor
export EDITOR=nvim

# Plugins
plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting"
plug "jeffreytse/zsh-vi-mode"
plug "zap-zsh/supercharge"
plug "zap-zsh/exa" # this plugin needs to be after zap-zsh/supercharge as per https://github.com/zap-zsh/exa/issues/3
plug "hlissner/zsh-autopair"

# kitty ssh fix
[ "$TERM" = "xterm-kitty" ] && alias ssh="kitty +kitten ssh"

# Aliases
alias n="nvim"
alias zshrc="nvim $HOME/.zshrc"
alias kitty="nvim $HOME/.config/kitty/kitty.conf"
alias zj="nvim $HOME/.config/zellij/config.kdl"
alias atty="nvim $HOME/.config/alacritty/alacritty.yml"

# starship.rs
export STARSHIP_CONFIG=/home/grim_reaper/.config/starship/starship.toml
eval "$(starship init zsh)"

# zellij
eval "$(zellij setup --generate-auto-start zsh)"
