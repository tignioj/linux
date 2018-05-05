#!/bin/bash

echo "========This is vim auto config script=========="
	echo "git clone vundle====>"
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	echo "done"
	echo -e "\n\ncp .vimrc ~/====>"
	cp .vimrc ~/
	echo "done"
	echo -e "\n\nInstalling plugins====>"
	vim +PluginInstall +qall
	vim -c 'PluginInstall'
	echo "done"
	echo "Enjoy"
