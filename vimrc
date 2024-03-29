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
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set list
set listchars=tab:>~

" when indenting with '>', use 4 spaces width
set shiftwidth=4

" Use code folds based on indentation
set foldmethod=indent

" Modify default YAML editing to 2 spaces
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType yml setlocal ts=2 sts=2 sw=2 expandtab



