.PHONY: install
install:
	test -f histfile || touch histfile
	test -s ${SUSER} && echo -n ${SUSER} >${HOME}/.zsh/config/suser
	cp -r ./ ${HOME}/.zsh
	test -f ${HOME}/.zshrc && mv ${HOME}/.zshrc ${HOME}/.zsh/zshrc.old
	ln -sf ${HOME}/.zsh/zshrc ${HOME}/.zshrc

.PHONY: uninstall
uninstall:
	rm -r ${HOME}/.zsh ${HOME}/.zshrc

