#!/bin/bash
if [ -f ~/.vimrc ]; then
	if [ -f ./vim/.vimrc.old ]; then
		echo error! please check and rm `pwd`/vim/.vinrc.old
		echo vimrc installation failed
	else
		cp ~/.vimrc ./vim/.vimrc.old
		rm ~/.vimrc 
		ln -s `pwd`/vim/vimrc ~/.vimrc	
	fi
else
	ln -s `pwd`/vim/vimrc ~/.vimrc	
fi

scr_path=`pwd`/scripts/
grep -wq $scr_path ~/.bashrc && echo "scripts path is already configured" || echo "PATH=$scr_path:\$PATH" >> ~/.bashrc ; . ~/.bashrc

cd vim 
cp -rf ./color/ ~/.vim/

