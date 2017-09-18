"=======Only Vim settings========
set nocompatible

"=======Vim title=========
set title

"=======No swap files=======
set noswapfile
set nobackup
set nowb

"========Colorscheme========
try
    colorscheme gruvbox
catch /^Vim\%((\a\+)\)\=:E185/
    colorscheme desert
endtry
set background=dark

"=========Tabs==========
set tabstop=4 shiftwidth=4

"=========Buffer========
set hidden
noremap y "+y
noremap p "+p
noremap d "+d


"=========Some misc settings==========
set visualbell
set nu
set autoread
set mousehide
set cin
