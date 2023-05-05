# Created by Zap installer
[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"

export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK="/run/user/$UID/gnupg/S.gpg-agent.ssh"
gpg-connect-agent updatestartuptty /bye > /dev/null
export STARSHIP_CONFIG=/home/grim_reaper/.config/starship/starship.toml
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

# starship.rs
eval "$(starship init zsh)"
eval "$(zellij setup --generate-auto-start zsh)"
