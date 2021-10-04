" First, manually install vim-plug.
" Remeber to call `:PlugInstall` to actually install the plugins.
"
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'davidhalter/jedi-vim'
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

nnoremap tt :r !date -u '+\%F \%T \%Z'

" disable rather irritating auto popups with function signature
let g:jedi#show_call_signatures = 0

" disable irritating scratch window popping up
set completeopt-=preview
