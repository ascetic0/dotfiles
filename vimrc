set number
set tabstop=4
set shiftwidth=4
set softtabstop=4
set clipboard=unnamedplus
set mouse=a
set autowrite
set autoread
set background=dark
set autoindent
set cindent
set smartindent
set expandtab
set nowrap
set noswapfile

colorscheme gruvbox

map <F5> :!./%< <CR>
map <F8> :!g++ -std=c++17 -Wall -Wshadow -Wextra -DLOCAL -pedantic -o %< % -D__GLIBCXX_DEBUG -fsanitize=address -fsanitize=undefined -g <CR>
map <F9> :!g++ -std=c++17 -O2 -o %< % <CR>
map <C-_> gcc<ESC>

au filetype cpp setlocal commentstring=//\ %s
au BufNewFile *.cc 0r ~/algos/tpl.cpp 

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'tpope/vim-commentary'
call vundle#end()
filetype plugin indent on
