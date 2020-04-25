set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'

" My plugins
Plugin 'kien/ctrlp.vim'
Plugin 'preservim/nerdtree'
Plugin 'rking/ag.vim'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'gregsexton/MatchTag'
:
 " This lets you operate on the quicklist as if it was the args list.
 " Now I can use Ag for search and replace in multiple files like this:
 " :Ag "search"
 " :Qdo %s/search/replace/gce | update
 Plugin 'henrik/vim-qargs'

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

syntax enable
syntax on
filetype plugin indent on
let python_highlight_all=1

set background=dark  " dark or light
" color mango
" colorschem twilight256
colorscheme darcula

" read a file when it is changed from the outside
set autoread

" Set this to the name of your terminal that supports mouse codes.
" " Must be one of: xterm, xterm2, netterm, dec, jsbterm, pterm
set ttymouse=xterm2
set mouse=a

" read a file when it is changed from the outside
set autoread

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


au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ softtabstop=4
    \ shiftwidth=4
    \ textwidth=79
    \ expandtab
    \ autoindent
    \ fileformat=unix
    \ colorcolumn=80 " make it obvioous with the end is1

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

set encoding=utf-8
set nu


" ctrl-p fuzzy
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_show_hidden = 1

" nerdtree
" open nerdtree on start
"autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
" show hidden files (you can toggle with shift-i)
let NERDTreeShowHidden=1

" Make `jj` and `jk` throw you into normal mode
inoremap jj <esc>
inoremap jk <esc>


nnoremap <C-,> :tabprevious<CR>
nnoremap <C-.> :tabnext<CR>

" Map ctrl-w h to ctrl-h etc
"map <C-h> <C-w>h
"map <C-j> <C-w>j
"map <C-k> <C-w>k
"map <C-l> <C-w>l

" Buffers
" open buffer explorer with \b
"imap \e <ESC>:BufExplorer<CR>
":map \e :BufExplorer<CR>

" Buffers
" Open buffer explorer with Ctrl-o (the letter)
"imap <C-o> <ESC>:BufExplorer<CR>
":map <C-o> :BufExplorer<CR>

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
"nnoremap <Leader>l :buffers<CR>:buffer<Space>
"nnoremap <Leader>b :bp<CR>
"nnoremap <Leader>f :bn<CR>
"nnoremap <Leader>g :e#<CR>

" Allow switching between buffers without saving
set hidden

"This unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>
set hlsearch

" This unsets the vistual highlight
nnoremap <Leader><space> :noh<cr>


" Set VIM to use the system clipboard s per:
" https://advancedweb.hu/working-with-the-system-clipboard-in-vim/
set clipboard=unnamedplus,unnamed,autoselect

" Set delete key to a good backspace setting
set backspace=indent,eol,start
