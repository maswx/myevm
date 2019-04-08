" 设置字符编码                                                                
set fileencoding=utf-8                                             
set fileencodings=utf-8,cp936,euc-cn,gb2312,gb18030,latin1                      
set termencoding=utf-8                                             
set encoding=utf-8                                                 

" display
set showmatch
set matchtime=5
set number  " 显示行号                                                      
set hls

set nobackup
set incsearch
set nowrap
set ruler
set imcmdline


                                                                   
" 语法高亮                                                         
syntax on                                                          
" 深色背景                                                         
color evening                                                      
" 检测文件类型                                                     
filetype on                                                        
" 根据文件类型加载对应的插件                                       
filetype plugin on                                                 
                                                                

" 高亮显示当前行                                                   
set cursorline                                                     
                                                                   
" 设置各种缩进                                                     
set tabstop=4                                                      
set softtabstop=4                                                  
set shiftwidth=4                                                   
set autoindent                                                     
set smartindent                                                    
set cindent                                                        
" set expandtab " tab转换为空格                                                    


" 创建新文件时候自动执行
autocmd BufNewFile,BufRead *.v set filetype=verilog
autocmd BufNewFile *.v,*.py,*.m,*.[ch],*.sh,*.cpp exec "call SetTitle()"

func SetTitle()
	if &filetype == 'cpp' || &filetype == 'c' || &filetype == 'h' || &filetype == 'verilog'
		call setline(1,         "//========================================================================")
		call append(line(".")   "//        author   : .. xiao                               ")
		call append(line(".")+1,"//        email    : maswell@maswll.tech     ")
		call append(line(".")+2,"//        creattime: ".strftime("%c"))
	endif
	if &filetype == 'sh' || &filetype == 'py'
		call setline(1,         "#========================================================================")
		call append(line(".")   "#        author   : .. xiao                               ")
		call append(line(".")+1,"#        email    : maswell@maswll.tech     ")
		call append(line(".")+2,"#        creattime: ".strftime("%c"))
	end
	if &filetype == 'm'
		call setline(1,         "%========================================================================")
		call append(line(".")   "%        author   : .. xiao                               ")
		call append(line(".")+1,"%        email    : maswell@maswll.tech     ")
		call append(line(".")+2,"%        creattime: ".strftime("%c"))
	end
	autocmd BufNewFile * normal G
endfunc
