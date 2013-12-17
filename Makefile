.PHONY: install
install:
	(test "${SUSER}" && echo -n ${SUSER} >./config/suser) || true
	test -d ${HOME}/.zsh || mkdir ${HOME}/.zsh
	test -d ./config || mkdir ./config
	test -d ./bin || mkdir ./bin
	cp -r ./config ./bin ./zshrc ${HOME}/.zsh
	test -f ${HOME}/.zsh/histfile || touch ${HOME}/.zsh/histfile
	(test -f ${HOME}/.zshrc && mv ${HOME}/.zshrc ${HOME}/.zsh/zshrc.old) || true
	ln -sf ${HOME}/.zsh/zshrc ${HOME}/.zshrc

.PHONY: uninstall
uninstall:
	rm -rf ${HOME}/.zsh ${HOME}/.zshrc

