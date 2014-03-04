# Enable Colors

autoload -Uz colors && colors
zmodload -i zsh/complist
eval $(dircolors)
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# End Colors
