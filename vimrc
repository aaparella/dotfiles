" General Stuff
filetype off
syntax on

set encoding=utf-8
set clipboard=unnamed

" Plugins

set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.fzf

call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'derekwyatt/vim-scala'
Plugin 'majutsushi/tagbar'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'sophacles/vim-processing'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

call vundle#end()
execute pathogen#infect()

" Automatically generated tags
set tags=./tags;

" UI Stuff
set incsearch       " Highlight searches as you type
set hlsearch        " Highlight all matches
set number          " Line numbers
set relativenumber  " Relative line numbers
set mouse=a         " Allow mouse in dire situations

colorscheme Monokai

augroup BgHighlight
	autocmd!
	autocmd WinEnter * set cul
	autocmd WinLeave * set nocul
augroup END

let g:airline_theme='monochrome'

" -- Highlight current line
hi CursorLine term=bold cterm=bold guibg=Grey40
set cursorline

set tabstop=4 shiftwidth=4 expandtab

let g:go_fmt_command = "goimports"
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_etra_conf.py'

" Mappings
nmap 0 ^                 
map <C-P> :FZF<ENTER>

" -- Turn off arrow keys
map <up> <nop>
map <left> <nop>
map <down> <nop>
map <right> <nop>
imap <up> <nop>
imap <left> <nop>
imap <down> <nop>
imap <right> <nop>

filetype plugin indent on
