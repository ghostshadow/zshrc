# Enable Colors

autoload -Uz colors && colors
zmodload -i zsh/complist
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# End Colors
