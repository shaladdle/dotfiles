set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'fatih/vim-go'
Plugin 'ctrlp.vim'
Plugin 'fugitive.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set tabstop=4 
set shiftwidth=4 
set expandtab
set number 
set ruler
set nowrap 

syntax on                
colorscheme twilight256

set autoread
set cursorline
hi CursorLine term=bold cterm=bold gui=bold ctermbg=darkgray guibg=gray30

set colorcolumn=81
hi ColorColumn ctermbg=blue

set t_Co=256

set backspace=indent,eol,start

nnoremap <Leader>b :CtrlPBuffer<CR>

noremap <silent> <Leader>w :call ToggleWrap()<CR>
noremap <silent> <Leader>s :call ToggleSpell()<CR>

function ToggleSpell()
    if &spell
        setlocal nospell
        set spell&
    else
        setlocal spell
        set spell
    endif
endfunction

function ToggleWrap()
    if &wrap
        echo "Wrap OFF"
        setlocal nowrap
        set virtualedit=all
        silent! nunmap <buffer> <Up>
        silent! nunmap <buffer> <Down>
        silent! nunmap <buffer> <Home>
        silent! nunmap <buffer> <End>
        silent! iunmap <buffer> <Up>
        silent! iunmap <buffer> <Down>
        silent! iunmap <buffer> <Home>
        silent! iunmap <buffer> <End>
    else
        echo "Wrap ON"
        setlocal wrap linebreak nolist
        set virtualedit=
        setlocal display+=lastline
        noremap  <buffer> <silent> <Home> g<Home>
        noremap  <buffer> <silent> <End>  g<End>
        inoremap <buffer> <silent> <Home> <C-o>g<Home>
        inoremap <buffer> <silent> <End>  <C-o>g<End>
        nnoremap 0 g0
        nnoremap $ g$
        nnoremap j gj
        nnoremap k gk
        vnoremap 0 g0
        vnoremap $ g$
        vnoremap j gj
        vnoremap k gk
    endif
endfunction
