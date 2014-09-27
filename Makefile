.PHONY: install
install:
	test -d ${HOME}/.zsh || mkdir ${HOME}/.zsh
	test -d ./config || mkdir ./config
	test -d ./bin || mkdir ./bin
	(test "${SUSER}" && echo -n ${SUSER} >./config/suser) || echo -n $(whoami) >./config/suser
	cp -r ./config ./bin ./zshrc ${HOME}/.zsh
	test -f ${HOME}/.zsh/histfile || touch ${HOME}/.zsh/histfile
	(test -f ${HOME}/.zshrc && mv ${HOME}/.zshrc ${HOME}/.zsh/zshrc.old) || true
	ln -sf ${HOME}/.zsh/zshrc ${HOME}/.zshrc

.PHONY: uninstall
uninstall:
	(test -f ${HOME}/.zsh/zshrc.old && mv ${HOME}/.zsh/zshrc.old ${HOME}/.zshrc) || rm -f ${HOME}/.zshrc
	rm -rf ${HOME}/.zsh

.PHONY: dist-clean
dist-clean:
	rm -f ./histfile ./config/suser

