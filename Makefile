.PHONY: install
install:
	test -f histfile || touch histfile
	(test "${SUSER}" && echo -n ${SUSER} >./config/suser) || true
	cp -r ./ ${HOME}/.zsh
	(test -f ${HOME}/.zshrc && mv ${HOME}/.zshrc ${HOME}/.zsh/zshrc.old) || true
	ln -sf ${HOME}/.zsh/zshrc ${HOME}/.zshrc

.PHONY: uninstall
uninstall:
	rm -rf ${HOME}/.zsh ${HOME}/.zshrc

