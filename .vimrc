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

Plugin 'jlanzarotta/bufexplorer'

Plugin 'gregsexton/MatchTag'

" This lets you operate on the quicklist as if it was the args list.
" Now I can use Ag for search and replace in multiple files like this:
" :Ag "search"
" :Qdo %s/search/replace/gce | update 
Plugin 'henrik/vim-qargs'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set background=dark  " dark or light
syntax enable
filetype plugin indent on
color mango

" Enable mouse support
set mouse=a

" Set this to the name of your terminal that supports mouse codes.
" " Must be one of: xterm, xterm2, netterm, dec, jsbterm, pterm
set ttymouse=xterm2

" read a file when it is changed from the outside
set autoread

set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287

" Change tab to a space character
set expandtab
set smarttab
set shiftwidth=4
set softtabstop=4


" make it obvious where 80 characters iset mouse=a
set textwidth=80
set colorcolumn=+1

" Show line numbers
set number
set ruler
set laststatus=2
set title

"use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
    "Use Ag over Grep
    set grepprg=ag\ --nogroup\ --nocolor
  
    " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore 
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

    " ag is fast enough that CtrlP doesn't need to cache
    let g:ctrlp_use_caching = 0 
endif


"I have capslock mapped to control on my mac
" Map jk to esc
inoremap jk <esc>

" Map ctrl-w h to ctrl-h etc
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Buffers
" open buffer explorer with \b
"imap \e <ESC>:BufExplorer<CR>
":map \e :BufExplorer<CR>

" Buffers
" Open buffer explorer with Ctrl-o (the letter)
imap <C-o> <ESC>:BufExplorer<CR>
:map <C-o> :BufExplorer<CR>

" Switch between buffers
"map <C-n> :bnext<CR>
"map <C-m> :bprev<CR>

"nnoremap <F5> :buffers<CR>:buffer<Space>

"nnoremap <Leader>l :ls<CR>
"
" Switching buffers
" \l will bring up the buffer list
" \b will be previous
" \n will be next
" \g will be most recent
nnoremap <Leader>l :buffers<CR>:buffer<Space>
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>
nnoremap <Leader>g :e#<CR>

" Allow switching between buffers without saving
set hidden

"This unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>
set hlsearch

" Allow ctrl-c and ctrl-v in visual mod
vmap <C-x> :!pbcopy<CR>  
vmap <C-c> :w !pbcopy<CR><CR> 



