.PHONY: install
install:
	touch histfile
	cp -r ./ ${HOME}/.zsh
	ln -sf ${HOME}/.zsh/zshrc ${HOME}/.zshrc

.PHONY: uninstall
uninstall:
	rm -r ${HOME}/.zsh ${HOME}/.zshrc

