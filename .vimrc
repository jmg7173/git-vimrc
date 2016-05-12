set nocompatible 			" be iMproved, required
filetype off					"required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Bundle 'Lokaltog/vim-powerline.git'
Bundle 'scrooloose/nerdtree.git' 

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

syntax on
set hls
set foldmethod=marker "indent/expr/manual/syntax/diff
set ts=2 "tabstop
set sw=2 "shiftwidth
set bs=2 "backspace 

set incsearch
set smartindent
set autoindent
set laststatus=2 

set nu
set smarttab
set title
set ruler
set showmatch
set nows
set tags=tags "?


"colors
"colorscheme desert
colorscheme molokai
set t_Co=256		"required for molokai (bundle)

set bg=dark
set mouse=an
set ignorecase "대소문자 무시
set smartcase		"검색문자에 대소문자 있으면 구별


"macros
map <F2> :! gcc -Wall % -lm && time ./a.out <CR>
map <F3> :! gcc -Wall % && time ./a.out < input.txt <CR>
map <F4> :! gcc -Wall % && time ./a.out <CR>
map <F5> gg=G<cr>
map <F6> :w <CR>
map <F7> v]}zf
map <F8> zo
map <F10> :vs <CR>
map <F11> <c-w><c-w>
map <F12> <c-w><c-q>

cnoreabbrev <expr> W ((getcmdtype() is# ':' && getcmdline() is# 'W')?('w'):('W'))

"required for NERDTree
"autocmd StdinReadPre * let s:std_in = 1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR> 

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif 
