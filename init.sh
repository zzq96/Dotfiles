#!/usr/bin/env bash
files=".vimrc .tmux.conf"
for file in $files
do
	ln -s  ~/Dotfiles/$file ~/$file

done
