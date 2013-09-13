# Completion Settings

zstyle ':completion:*' auto-description 'require: %d'
zstyle ':completion:*' completer _expand _complete _ignored _match _approximate _prefix
zstyle ':completion:*' expand suffix prefix 
zstyle ':completion:*' file-sort name
zstyle ':completion:*' format 'Matching %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' ignore-parents parent pwd .. directory
zstyle ':completion:*' insert-unambiguous true
zstyle ':completion:*' list-suffixes true
zstyle ':completion:*' matcher-list '+' '+m:{[:lower:][:upper:]}={[:upper:][:lower:]}' '+r:|[._-]=** r:|=**' 'l:|=* r:|=*'
zstyle ':completion:*' match-original both
zstyle ':completion:*' max-errors 2
zstyle ':completion:*' menu select=long-list select=0
zstyle ':completion:*' original true
zstyle ':completion:*' preserve-prefix '//[^/]##/'
zstyle ':completion:*' prompt 'Found Match with %e differences! Did you mean this? [yn]'
zstyle ':completion:*' select-prompt %S%l %p%s
zstyle ':completion:*' special-dirs true

autoload -Uz compinit && compinit

# End Completion
