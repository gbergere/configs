.DEFAULT_GOAL := init
.PHONY = init install-vim-dep

init:
	# Git
	ln -svhf $(PWD)/.gitconfig  ~
	ln -svhf $(PWD)/.gitignore  ~
	# Hammerpsoon
	ln -svhf $(PWD)/.hammerspoon  ~
	ln -svhf $(PWD)/.tmux.conf  ~
	# Vim
	ln -svhf $(PWD)/.vimrc  ~
	# Zsh
	ln -svhf $(PWD)/.zprofile ~

install-vim-dep:
	luarocks install luacheck
	ln -svhf $(PWD)/Library/Application\ Support/Luacheck ~/Library/Application\ Support/Luacheck
