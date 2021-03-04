" First, manually install vim-plug!
"
"
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'scrooloose/nerdcommenter'
Plug 'rust-lang/rust.vim'

call plug#end()

set colorcolumn=80
highlight ColorColumn ctermbg=lightgrey guibg=lightgrey

syntax enable
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

set splitbelow

nnoremap <C-b> :YcmCompleter GoTo

nnoremap tt :r !date -u '+\%F \%T \%Z'
