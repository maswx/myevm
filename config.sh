#!/bin/bash
if [ -f ~/.vimrc ]; then
	if [ -f ./.vimrc.old ]; then
		echo error! please check and rm `pwd`/.vinrc.old
		echo vimrc installation failed
	else
		cp ~/.vimrc .vimrc.old
		rm ~/.vimrc 
		ln -s `pwd`/vimrc ~/.vimrc	
	fi
fi

scr_path=`pwd`/scripts/
grep -wq $scr_path ~/.bashrc && echo "scripts path is already configured" || echo "PATH=$scr_path:\$PATH" >> ~/.bashrc ; . ~/.bashrc


