"NeoBundle Scripts-----------------------------
if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=/home/adam/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/home/adam/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'vim-scripts/xoria256.vim'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'mxw/vim-jsx'
NeoBundle 'rust-lang/rust.vim'
NeoBundle 'mileszs/ack.vim'
NeoBundle 'fatih/vim-go'
NeoBundle 'mbbill/undotree'
NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'cespare/vim-toml'
"NeoBundle 'mhinz/vim-signify'

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

nnoremap <Leader>u :UndotreeToggle<cr>
nnoremap <Leader>b :CtrlPBuffer<cr>
nnoremap <Leader>e :CtrlP<cr>
nnoremap <Leader>] :YcmCompleter GoTo<cr>
nmap <C-k> :RustFmt<cr>

set tabstop=4
set shiftwidth=4
set number

"let g:rustfmt_autosave = 1
let g:jsx_ext_required = 0
let g:ctrlp_root_markers = ['.git', 'CTRLP_MARKER']
set wildignore+=*/target/*

set ruler
set cursorline
set t_Co=256
color xoria256
syntax on
match ErrorMsg '\%>100v.\+'
autocmd BufRead,BufNewFile Cargo.toml,Cargo.lock,*.rs compiler cargo
