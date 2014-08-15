set nocp
filetype plugin on
syntax on

map <F2> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR>
map <F3> :!git branch -vv

set tags=./tags;~
