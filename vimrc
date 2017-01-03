" General Stuff
filetype off
syntax on

set encoding=utf-8

" ------------------- Plugins! -----------------------
" Actively trying to use as few plugins as is possible
" Only plugins I'm currently using are easytags, vim-go
" and vim-commentary.

set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.fzf

" Plugins
call plug#begin()
Plug 'xolox/vim-misc'
Plug 'xolox/vim-easytags'
Plug 'flazz/vim-colorschemes'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'tpope/vim-commentary'
Plug 'fatih/vim-go'
call plug#end()

" For vim-easytags
" Automatically generated tags
set tags=./tags;

" ---------------- File Navigation -----------------
" Allow find commands to search subdirectories
" recursively.
set path+=**

" netrw configuration
let g:netrw_banner=0                          " remove netrw banner
let g:netrw_browse_split=4
let g:netrw_chgwin=1                          " default to opening files in same buffer
let g:netrw_altv=1
let g:netrw_liststyle=3
let g:netrw_list_hide=netrw_gitignore#Hide()  " Ignore any files in gitignore

" ------------------ Mappings --------------------
map <C-P> :FZF<ENTER>

" ------------------ UI Stuff! --------------------
set incsearch       " Highlight searches as you type
set hlsearch        " Highlight all matches
set number          " Line numbers
set relativenumber  " Relative line numbers
set mouse=a         " Allow mouse in dire situations

" -- Turn off arrow keys
map <up> <nop>
map <left> <nop>
map <down> <nop>
map <right> <nop>

colorscheme Monokai

" Indicate currently active window
augroup BgHighlight
	autocmd!
	autocmd WinEnter * set cul
	autocmd WinLeave * set nocul
augroup END

" -- Highlight current line
hi CursorLine term=bold cterm=bold guibg=Grey40
set cursorline

set tabstop=4 shiftwidth=4 expandtab

" ----------------- Language Specific things! -------
let g:go_fmt_command = "goimports"

filetype plugin indent on
