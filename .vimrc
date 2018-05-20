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
autocmd VimLeave * call system("xsel -ib", getreg('+'))

"=========Search========
set hlsearch
set smartcase
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>

"=========Some misc settings==========
set visualbell
set nu
set autoread
set mousehide
set cin
nmap + <C-W>+
nmap - <C-W>-
nnoremap <silent> <C-l> :nohl<CR><C-l>
