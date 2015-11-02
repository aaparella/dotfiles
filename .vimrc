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

let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

let g:go_fmt_command = "goimports"

set number
set relativenumber
syntax on
set hlsearch
set mouse=a
colorscheme Monokai

imap <S-Tab> <C-P>

augroup BgHighlight
	autocmd!
	autocmd WinEnter * set cul
	autocmd WinLeave * set nocul
augroup END

set listchars=tab:>-,trail:-

hi CursorLine term=bold cterm=bold guibg=Grey40

" Allow for quitting to close both the nerdtree window and main window "
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" Allow for toggling of the NERDTree panel
map <C-n> :NERDTreeToggle<CR>

" Set up ignoring values in Nerdtree
let NERDTreeIgnore = ['\.o$', '\.out$', '\.class$']

set tabstop=4 shiftwidth=4 expandtab
