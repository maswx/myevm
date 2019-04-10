#!/bin/bash
# if [ -f ~/.vimrc ]; then
# 	cp ~/.vimrc .vimrc.old
# 	rm ~/.vimrc 
# fi
# ln -s `pwd`/vimrc ~/.vimrc	

scr_path=`pwd`/scripts/
grep -wq $scr_path ~/.bashrc && echo "scripts path is already configured" || echo "PATH=$scr_path:\$PATH" >> ~/.bashrc ; . ~/.bashrc


