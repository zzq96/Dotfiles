#!/usr/bin/env bash
DIR=$(cd  $(dirname  ${BASH_SOURCE}) && pwd)
files=".vimrc .tmux.conf .gitconfig"
#for file in `ls -a $DIR |grep -E "^(\.[A-Za-Z0-9]+)+$"`
for file in $files
do
	if [[ $file == '.git' ]]; then
		continue
	fi
	ln -s  ~/Dotfiles/$file ~/$file
done
