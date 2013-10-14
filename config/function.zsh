# Userfunctions

run-with-sudo() { LBUFFER="sudo $LBUFFER" }
zle -N run-with-sudo
bindkey '^Xs' run-with-sudo

calc() { echo $(($*)) } 
# End Userfunc
#
