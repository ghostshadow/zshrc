# Basic configuration

[ -f $ZSHR/histfile ] || touch $ZSHR/histfile
HISTFILE=$ZSHR/histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd 
[ -r /etc/profile.d/cnf.sh ] && . /etc/profile.d/cnf.sh
[ -r ~/.profile ] && . ~/.profile

# End Basic conf
