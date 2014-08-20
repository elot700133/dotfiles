""""""""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""""""""
set nocp

filetype plugin on
filetype indent on

" encoding
set encoding=utf-8
set fileencodings=utf-8

" auto reload
set autoread

syntax enable

" show line number
set number

set textwidth=79

""""""""""""""""""""""""""""""""""""""""""
" Color
""""""""""""""""""""""""""""""""""""""""""
"colorscheme desert
"set background=dark
"set background=light

""""""""""""""""""""""""""""""""""""""""""
" Interface
""""""""""""""""""""""""""""""""""""""""""
"set wildmenu
"set wildignore=*.o,*~

" always show cursor position
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
set pastetoggle=<F4>  "paste mode

" moving between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

""""""""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""""""""
" recusively look for tags until reaching home dir
set tags=./tags;~

" use spaces instead tab
set expandtab
set smarttab
set shiftwidth=2 " tab = 2 spaces
set autoindent "Auto indent
set smartindent "Smart indent
"set wrap "Wrap lines
set nowrap "no wrapping text

""""""""""""""""""""""""""""""""""""""""""""""""""
" how to
""""""""""""""""""""""""""""""""""""""""""""""""""

" build within vim 
" :make
" Jump to the error
" :copen   
