#!/bin/bash
if [ -f ~/.vimrc ]; then
	if [ -f ~/.vimrc.old ]; then
		echo error! please check and rm ./.vimrc.old
		echo vimrc installation failed
	else
		mv ~/.vimrc ./.vimrc.old
		ln -s `pwd`/vim/vimrc ~/.vimrc	
	fi
else
	ln -s `pwd`/vim/vimrc ~/.vimrc	
fi


# vim
if [ -d ~/.vim ]; then
	if [ -d ~/.vim.old ]; then
		echo error! please check and rm ./.vim.old
		echo vim installation failed
	else
		mv ~/.vim ./.vim.old
		ln -s `pwd`/vim ~/.vim
	fi
else
	ln -s `pwd`/vim ~/.vim
fi


#gitconfig
if [ -f ~/.gitconfig ]; then
	if [ -f ~/.gitconfig.old ]; then
		echo error! please check and rm ./.gitconfig.old
		echo gitconfig installation failed
	else
		mv ~/.gitconfig ./.gitconfig.old
		ln -s `pwd`/git/gitconfig ~/.gitconfig
	fi
else
	ln -s `pwd`/git/gitconfig ~/.gitconfig
fi


# bashrc 
#--scr_path=`pwd`/scripts/
#--grep -wq $scr_path ~/.bashrc && echo "scripts path is already configured" || echo "PATH=$scr_path:\$PATH" >> ~/.bashrc ; . ~/.bashrc
#--bash_path=`pwd`
#--stc="if [ -f $bash_path/bashrc ]; then\n\tsource $bash_path/bashrc\nfi\n"
#--grep -wq $bash_path/bashrc ~/.bashrc && echo "bash path is already configured" || echo -e $stc >> ~/.bashrc 

