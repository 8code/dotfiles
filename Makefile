DOTFILES := $(shell pwd)
all: shell prezto tmux ruby git modules
.PHONY: shell prezto tmux ruby git modules
shell:
	#ln -fs $(DOTFILES)/bash/bashrc ${HOME}/.bashrc
	#ln -fs $(DOTFILES)/bash/bashenv ${HOME}/.bashenv
	#ln -fs $(DOTFILES)/profile ${HOME}/.bash_profile
	#ln -fs $(DOTFILES)/zsh/zshrc ${HOME}/.zshrc
	#ln -fs $(DOTFILES)/zsh/zshenv ${HOME}/.zshenv
	#ln -fs $(DOTFILES)/profile ${HOME}/.zprofile
	#ln -fs $(DOTFILES)/zsh/zlogin ${HOME}/.zlogin
	#ln -fs $(DOTFILES)/zsh/zlogout ${HOME}/.zlogout
prezto:
	ln -fs $(DOTFILES)/prezto ${HOME}/.prezto
	ln -fs $(DOTFILES)/prezto/runcoms/zlogin ${HOME}/.zlogin
	ln -fs $(DOTFILES)/prezto/runcoms/zlogout ${HOME}/.zlogout
	ln -fs $(DOTFILES)/prezto/runcoms/zpreztorc ${HOME}/.zpreztorc
	ln -fs $(DOTFILES)/prezto/runcoms/zprofile ${HOME}/.zprofile
	ln -fs $(DOTFILES)/prezto/runcoms/zshenv ${HOME}/.zshenv
	ln -fs $(DOTFILES)/prezto/runcoms/zshrc ${HOME}/.zshrc
tmux:
	ln -fs $(DOTFILES)/rc/.tmux.conf ${HOME}/.tmux.conf
ruby:
	ln -fs ${DOTFILES}/ruby/.gemrc ${HOME}/.gemrc
git:
	ln -fs $(DOTFILES)/git/.gitconfig ${HOME}/.gitconfig
	ln -fs $(DOTFILES)/git/.gitignore ${HOME}/.gitignore
vim:
	ln -fs $(DOTFILES)/rc/.vimrc ${HOME}/.vimrc
modules:
	ln -fs $(DOTFILES)/.modules ${HOME}/.modules
