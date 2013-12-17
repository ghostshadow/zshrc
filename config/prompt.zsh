# User Prompt

autoload -U promptinit && promptinit
setopt prompt_subst
case $(get_user) in
	"root")
		UCOLOR="red"
		PCOLOR="red"
		PSIGN="#"
		;;
	"$(cat ${ZSHC}/suser)")
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

PROMPT="[%{$fg_no_bold[$UCOLOR]%}%n%{$reset_color%}]>%{$fg_no_bold[yellow]%}%~%{$reset_color%} %{$fg_no_bold[magenta]%}%?%{$fg_no_bold[$PCOLOR]%} $PSIGN %{$reset_color%}"

# End Propt
