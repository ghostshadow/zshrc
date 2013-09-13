# ZSH Main Config File
# (only append fallback config)

# Config inclusion
if [[ -d $HOME/.zsh ]] ; then
	ZSHR=$HOME/.zsh
	if [[ -d $ZSHR/config ]] ; then
		ZSHC=$ZSHR/config
	else
		ZSHC=$ZSHR
	fi
	if [[ -d $ZSHR/bin ]] ; then
		ZSHB=$ZSHR/bin
	else
		ZSHB=$ZSHR
	fi
	if [[ -a $ZSHC/modules.zsh ]] ; then
		source $ZSHC/modules.zsh
		for core in $CORE ; do
			[[ -a $ZSHC/$core.zsh ]] && source $ZSHC/$core.zsh
		done
		for extra in $EXTRA ; do
			[[ -a $ZSHC/$extra.zsh ]] && source $ZSHC/$extra.zsh
		done
	else
		for file in $(ls $ZSHC/*.zsh) ; do
			[[ -a $file ]] && source $file
		done
	fi
else 
	echo "ZSHRC CONFIG ONLY!" >&2
fi


# End Config inlusion

