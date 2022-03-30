
"make new windows split right and down
set splitbelow splitright
"make popup menu smaller
"set pumheight=10
"turn off line wrap
set nowrap
"treat dash separated words as a word text object
"set iskeyword+=-
" turn off highlight search
set nohlsearch
" disables automatic commenting on newlines
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
"perform dot commands over visual blocks
vnoremap . :normal .<CR>


" Automatically delets all trailing whitespace and newlines at end of file on
" save
autocmd BufWritePre * %s/\s+$//e
autocmd BufWritePre * %s/\n+\$//e

" show substitutions incrementally
if has("nvim")
    set inccommand=nosplit
endif
