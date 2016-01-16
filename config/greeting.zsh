# Display MOTD

case $USERNAME in
	root)
		UCOLORC="1"
		;;
	$(cat ${ZSHC}/suser))
		UCOLORC="2"
		;;
	*)
		UCLORC="4"
		;;
esac

echo -e "\e[1mHello \e[0;3${UCOLORC}m$USERNAME\e[1;39m it is now $(date +%H:%M). Welcome back!\e[0m"

zshexit() {
	echo -e "\n\e[1mExiting! Good Bye!\e[0m\n"
	sleep 0.5
}

# END MOTD
