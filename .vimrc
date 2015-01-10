set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
" After adding a plugin be sure to run:
" $ vim +PluginInstall +qall
Plugin 'gmarik/Vundle.vim'

Plugin 'kchmck/vim-coffee-script'

Plugin 'goatslacker/mango.vim'

Plugin 'kien/ctrlp.vim'

Plugin 'rking/ag.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set background=dark  " dark or light
syntax enable
filetype plugin indent on
color mango

" Enable mouse support
set mouse=a

" read a file when it is changed from the outside
set autoread

" Change tab to a space character
set expandtab
set smarttab
set shiftwidth=4
set softtabstop=4

" Show line numbers
set number
set ruler
set laststatus=2
set title

"This unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>
set hlsearch

"I have capslock mapped to control on my mac
" Map jk to esc
inoremap jk <esc>

" Map ctrl-w h to ctrl-h etc
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Switch between buffers
nmap <C-n> :bnext<CR>
nmap <C-p> :bprev<CR>

" Allow switching between buffers without saving
set hidden
