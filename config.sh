#!/bin/bash
if [ -f ~/.vimrc ]; then
	cp ~/.vimrc .vimrc.old
	rm ~/.vimrc 
fi
ln -s `pwd`/vimrc ~/.vimrc	

