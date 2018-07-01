" General / Syntax Highlighting
set nocompatible
syntax on
filetype plugin on
filetype indent on
set noswapfile
set visualbell

" Colorscheme
set bg=dark
colorscheme ron

" Line Numbering and Ruler
set number
set relativenumber
set autoread
set ruler
set laststatus=2

" Smartcase and Highlight Searching
set ignorecase
set smartcase
set hlsearch
set incsearch
set showmatch

" Remove timeout delay before opening a new line with o/O
set timeout timeoutlen=1000 ttimeoutlen=100

" Tabs and Spaces
set tabstop=4
set expandtab

" when indenting with '>', use 4 spaces width
set shiftwidth=4

" On pressing tab, insert 4 spaces
set expandtab
set foldmethod=indent

call plug#begin('~/.vim/plugs/')
Plug 'pearofducks/ansible-vim'
call plug#end()
