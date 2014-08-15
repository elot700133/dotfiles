
""""""""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""""""""
set nocp

filetype plugin on
filetype indent on

set autoread

syntax enable

""""""""""""""""""""""""""""""""""""""""""
" Color
""""""""""""""""""""""""""""""""""""""""""
"colorscheme desert
"set background=dark

""""""""""""""""""""""""""""""""""""""""""
" Interface
""""""""""""""""""""""""""""""""""""""""""
"set wildmenu

set wildignore=*.o,*~

set ruler

set cmdheight=2

" searching
set ignorecase 
set smartcase
set hlsearch
set incsearch
set showmatch
set mat=5
set lazyredraw

" turn off sound on error
set noerrorbells
set novisualbell

map <F2> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR>
map <F3> :!git branch -vv

" moving between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

""""""""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""""""""
set tags=./tags;~
