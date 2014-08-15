set nocp
filetype plugin on
syntax on

map <F2> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR>

set tags=./tags;~
