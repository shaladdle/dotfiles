set tabstop=4 
set shiftwidth=4 
set expandtab
set number 
set ruler
set nowrap 

set cursorline
hi CursorLine term=bold cterm=bold gui=bold ctermbg=black guibg=gray30

set rtp+=$GOROOT/misc/vim
filetype plugin indent on
syntax on                

set t_Co=256

set background=dark
set backspace=indent,eol,start
highlight Comment ctermfg=yellow
