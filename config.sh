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


# vim
if [ -f ~/.vim/colors ]; then
	cp ./vim/colors/space-vim-dark.vim ~/.vim/colors/
else 
	mkdir -p ~/.vim/colors
	cp ./vim/colors/space-vim-dark.vim ~/.vim/colors/
fi

# bashrc 
scr_path=`pwd`/scripts/
grep -wq $scr_path ~/.bashrc && echo "scripts path is already configured" || echo "PATH=$scr_path:\$PATH" >> ~/.bashrc ; . ~/.bashrc
bash_path=`pwd`
stc="if [ -f $bash_path/bashrc ]; then\n\tsource $bash_path/bashrc\nfi\n"
grep -wq $bash_path/bashrc ~/.bashrc && echo "bash path is already configured" || echo -e $stc >> ~/.bashrc 

