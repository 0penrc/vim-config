set nocompatible              " be iMproved, required
filetype plugin on

" set the runtime path to include Vundle and initialize
set rtp+=C:/Users/Toiletflusher/vimfiles
set rtp+=C:/Users/Toiletflusher/vimfiles/autoload

" source C:/Users/Toiletflusher/vimfiles/clang_complete.vmb
set number
hi NonText guifg=bg
syntax on
inoremap <C-Tab> <C-X><C-U>
autocmd User asyncomplete_setup call asyncomplete#register_source(
    \ asyncomplete#sources#clang#get_source_options())
let &pythonthreedll = 'C:\PYTH36\python36.dll'
set path+=C:\PYTH36\
set pythonthreehome=C:\PYTH36i\
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/vimfiles/plugged')
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
call plug#end()
let g:gruvbox_contrast_dark = 'medium'
colorscheme gruvbox
let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_liststyle=3
" set shm+=I