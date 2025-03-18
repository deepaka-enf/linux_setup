set guifont=Monospace\ 13
set tabpagemax=40
set nu
set ul=1000
syntax on
set backspace=indent,eol,start
set autoindent
set noic
set nocp
set wildmenu

set nocompatible
filetype plugin on
runtime macros/matchit.vim

" use 4 spaces instead of tabs
set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=2

set ruler
set cursorcolumn
set cursorline

set showmatch
set warn
set hls
syn on
set incsearch

map <F1>  :w!<ENTER>
imap <F1>  <esc>:w!<ENTER>

map <F2>  :w!<ENTER>
imap <F2>  <esc>:w!<ENTER>

map <F4>  :sp<ENTER>:E<ENTER>:set nu<ENTER>
imap <F4>  <esc> :sp<ENTER>:E<ENTER>:set nu<ENTER>

map <F5>  :e!<ENTER>:set syntax=systemverilog<ENTER>
imap <F5>  <esc>:w!<ENTER>:set syntax=systemverilog<ENTER>

map <F6> :%s/\s\+$//e<ENTER>

map <F7>  :tab split<ENTER>:E<ENTER>
imap <F7>  <esc> :tab split<ENTER>:E<ENTER>

source ~/.vim/macros/matchit.vim

"---------------------------------------------------------------
ab $d $display("");<esc>hhha
ab $e $display("DA_DBG \| <C-r>=expand('%:t:r')<CR> \|");<esc>hhha
abbr #x //--------------------------------------------------------------------------------
abbr #c //////////////////////////////////////////////////////////////////////////////////
"---------------------------------------------------------------


""au BufRead,BufNewFile *.sv,*.svi,*.svh,*.tv,*.iv source ~/.vim/syntax/systemverilog.vim source ~/.vim/indent/systemverilog.vim
colorscheme atom_dark
