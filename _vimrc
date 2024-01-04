" Behaviour

set nocompatible

set backspace=2

set expandtab shiftwidth=4 tabstop=4

set autoindent smartindent

set incsearch hlsearch

" Looks

syntax on

colors slate

set number

set list listchars=space:·,tab:┊\ 

" Keys

let mapleader=","

inoremap jk <esc>

nnoremap <return> G
nnoremap <space><space> :
nnoremap <esc><esc> :nohl<return>

nnoremap <leader>w :w<return>
nnoremap <leader>d :bd<return>
nnoremap <leader>m :bp<return>
nnoremap <leader>. :bn<return>
nnoremap <leader>, :b#<return>
nnoremap <leader>/ :ls<return>
nnoremap <leader>x :bn<return>:bd#<return>

" C

function! SetupC()
    set noexpandtab
    set colorcolumn=80
    nnoremap <leader>gh :e %<.h<return>
    nnoremap <leader>gc :e %<.c<return>
endfunction

autocmd FileType c call SetupC()

" Go

function! SetupGo()
    set noexpandtab
    set colorcolumn=80
    nnoremap <leader>gf :%!gofmt %<return>
    nnoremap <leader>gi :%!goimports %<return>
    nnoremap <leader>gr :!go run .<return>
    nnoremap <leader>grd :!go run -tags=debug .<return>
endfunction

autocmd FileType go call SetupGo()

" Markdown

function! SetupMarkdown()
    set colorcolumn=80
    nnoremap <leader>h :0r! ./header.sh<return>
    nnoremap <leader>dp :r! ./date.sh post<return>kJ
    nnoremap <leader>dr :r! ./date.sh rfc822<return>kJ
endfunction

autocmd FileType markdown call SetupMarkdown()

" Shell

function! SetupShellscripts()
    nnoremap <leader>sc :!shellcheck %<return>
endfunction

autocmd FileType sh call SetupShellscripts()
