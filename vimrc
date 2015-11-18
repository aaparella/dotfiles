set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

call vundle#end()
filetype plugin indent on

set tags=./tags;

execute pathogen#infect()
set runtimepath^=~/.vim/bundle/ctrlp.vim
set incsearch

set number
set relativenumber
set hlsearch
set mouse=a
colorscheme Monokai
syntax on

imap <S-Tab> <C-P>
nmap 0 ^

augroup BgHighlight
	autocmd!
	autocmd WinEnter * set cul
	autocmd WinLeave * set nocul
augroup END

set listchars=tab:>-,trail:-

hi CursorLine term=bold cterm=bold guibg=Grey40
set tabstop=4 shiftwidth=4 expandtab

let g:go_fmt_command = "goimports"
let g:ctrlp_user_command = 'ag %s -l --hidden --nocolo -g ""'
let g:ctrlp_use_caching = 0
