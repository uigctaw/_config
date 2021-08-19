" First, manually install vim-plug!
" Remeber to call `:PlugInstall` to actually install the plugins!
" Also YCM is likely not to work out of the box due to missing core
" library. That sucks I would say. Anyway. You might beed to run something
" along the lines of:
" ```
" $ sudo apt install build-essential cmake python3-dev
" $ cd ~/.vim/plugged/YouCompleteMe
" $ python3 install.py --clang-completer
" ```
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

# diable YCM hovering hints
let g:ycm_auto_hover=''
