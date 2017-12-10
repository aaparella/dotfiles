" General Stuff
filetype off
syntax on

set ttyfast

set encoding=utf-8

" ------------------- Plugins! -----------------------
" Actively trying to use as few plugins as is possible

set rtp+=~/.fzf

" Plugins
call plug#begin()
Plug 'flazz/vim-colorschemes'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'octref/RootIgnore'
Plug 'albfan/nerdtree-git-plugin'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'tpope/vim-commentary'
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'elixir-lang/vim-elixir', { 'for': 'elixir' }
Plug 'keith/swift.vim', { 'for' : 'swift' }
Plug 'derekwyatt/vim-scala', { 'for' : 'scala' }
Plug 'rust-lang/rust.vim', { 'for' : 'rust' }
Plug 'kien/rainbow_parentheses.vim', { 'for' : 'clojure' }
Plug 'sheerun/vim-polyglot'
call plug#end()

" ---------------- File Navigation -----------------
" Allow find commands to search subdirectories
" recursively.
set path+=**

set shortmess+=c
set belloff+=ctrlg

" ------------------ Mappings --------------------
map <C-P> :FZF<ENTER>

" -- Turn off arrow keys
map <up> <nop>
map <left> <nop>
map <down> <nop>
map <right> <nop>

" Write current file with sudo privileges
cmap w!! w !sudo tee > /dev/null %

" ------------------ UI Stuff! --------------------
set incsearch       " Highlight searches as you type
set hlsearch        " Highlight all matches
set number          " Line numbers
set relativenumber  " Relative line numbers
set mouse=a         " Allow mouse in dire situations

colorscheme Monokai

let NERDTreeRespectWildIgnore=1   

" Indicate currently active window
augroup BgHighlight
	autocmd!
	autocmd WinEnter * set cul
	autocmd WinLeave * set nocul
augroup END

au FileType clojure RainbowParenthesesToggle
au FileType clojure RainbowParenthesesLoadRound

" ------------------ FileType Configurations --------
autocmd FileType go set makeprg=go\ test\ ./...
autocmd FileType java setlocal omnifunc=javacomplete#Complete

set tabstop=4 shiftwidth=4 expandtab

" ----------------- Language Specific things! -------
let g:go_fmt_command = "goimports"

filetype plugin indent on
