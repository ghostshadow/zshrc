# Userfunctions

get_user() {
	if whoami &>/dev/null ; then
		printf $(whoami);
	elif test -n $LOGNAME ; then
		printf $LOGNAME;
	elif test -n $USER ; then
		printf $USER;
	else
		printf $(echo $HOME | sed -e "s/\/home\///");
	fi
	return 0;
}

run-with-sudo() { LBUFFER="sudo $LBUFFER" }
zle -N run-with-sudo
bindkey '^Xs' run-with-sudo

calc() { echo $(($*)) } 
# End Userfunc
#
