#!/bin/bash
if [ -f ~/.vimrc ]; then
	cp ~/.vimrc .vimrc.old
	rm ~/.vimrc 
	ln -s `pwd`/vimrc ~/.vimrc	
fi

