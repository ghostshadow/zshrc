# User Prompt

autoload -U promptinit && promptinit
setopt prompt_subst
case $USERNAME in
	root)
		UCOLOR="red"
		PCOLOR="red"
		PSIGN="#"
		;;
	$(cat ${ZSHC}/suser))
		UCOLOR="green"
		PCOLOR="blue"
		PSIGN=">"
		;;
	*)
		UCOLOR="blue"
		PCOLOR="blue"
		PSIGN="%"
		;;
esac

PROMPT="[%{$fg_no_bold[$UCOLOR]%}%n%{$reset_color%}@%m]>%{$fg_no_bold[yellow]%}%~%{$reset_color%} %{$fg_no_bold[magenta]%}%?%{$fg_no_bold[$PCOLOR]%} $PSIGN %{$reset_color%}"

case $TERM in
	xterm*)
		precmd() {print -Pn "\e]0;ZSH [%n]\a"}
		preexec() {print -Pn "\e]0;`echo -n ${2} | awk '{print $1;}'`\a"}
		;;
esac

# End Propt
