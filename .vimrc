try
    colorscheme gruvbox
catch /^Vim\%((\a\+)\)\=:E185/
    colorscheme desert
endtry
set background=dark
set tabstop=4 shiftwidth=4
set nu
set autoread
set mousehide
set cin
noremap y "+y
noremap p "+p
noremap d "+d
