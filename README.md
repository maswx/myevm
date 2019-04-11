### What is myevm

myevm is my Linux environment as the project name.

### How to install 

easy. execute the follow command in Mac 
``` shell
git clone https://github.com/maswell/myevm
mv myevm ~/.myevm
cd ~/.myevm
chmod +x config.sh
source config.sh
```

### How to USE

vimrc is vim environment initial file. use the following command in vim editor 

```vim
ilog "insert mode . insert log .
:clog "normal mode . create or edit commit log with git 
 ;; " insert mode. using with bracketing . note the space before the command
.. "the same command as ESC. The ESC is too far away on the keyboard.
```
### scripts
I Shared some command scripts in ./scripts. 
```shell
gitcm # the same command as git commit -F .filename.gitcmlog filename
```
the command `gitcm` use with vim command `:clog` only. 
actually ,the file named `.*.gitcmlog` will be created or modified when you use command `:clog` in vim. 
the command `gitcm` automatically searches for files named `.*.gitcmlog` and `*` which you want commit to git .finally execute the normal git command `git commit -F $.filename.gitcmlog $filename`



