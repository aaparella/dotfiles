" General Stuff
filetype off
syntax on

set ttyfast

set encoding=utf-8

" ------------------- Plugins! -----------------------
" Actively trying to use as few plugins as is possible
" You can see how well that's worked out

set rtp+=~/.fzf

" Plugins
call plug#begin()
Plug       'junegunn/fzf',                     { 'dir': '~/.fzf', 'do': './install --all' }
Plug     'scrooloose/nerdtree',                { 'on': 'NERDTreeToggle' }
Plug    'vim-airline/vim-airline'
Plug    'vim-airline/vim-airline-themes'
Plug         'albfan/nerdtree-git-plugin'
Plug    'elixir-lang/vim-elixir',              { 'for': 'elixir' }
Plug          'flazz/vim-colorschemes'
Plug          'tpope/vim-commentary'
Plug 'ludovicchabant/vim-gutentags'
Plug          'fatih/vim-go',                  { 'for': 'go' }
Plug        'sheerun/vim-polyglot'
Plug     'derekwyatt/vim-scala',               { 'for' : 'scala' }
Plug           'kien/rainbow_parentheses.vim', { 'for' : 'clojure' }
Plug         'octref/RootIgnore'
Plug      'rust-lang/rust.vim',                { 'for' : 'rust' }
Plug          'keith/swift.vim',               { 'for' : 'swift' }
Plug     'majutsushi/tagbar',                  { 'on'  : 'Tagbar' }
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

let g:airline_theme='minimalist'

" ------------------ UI Stuff! --------------------
set incsearch       " Highlight searches as you type
set hlsearch        " Highlight all matches
set number          " Line numbers
" set relativenumber  " Relative line numbers
set mouse=a         " Allow mouse in dire situations
set laststatus=2    " *Always* show status line

colorscheme Monokai

" NERDTree does not display files that are gitignored
let NERDTreeRespectWildIgnore=1   

" Indicate currently active window
augroup BgHighlight
	autocmd!
	autocmd WinEnter * set cul
	autocmd WinLeave * set nocul
augroup END

" ------------------ FileType Configurations --------
autocmd FileType go set makeprg=go\ test\ ./...
let g:go_fmt_command = "goimports"

au FileType clojure RainbowParenthesesToggle
au FileType clojure RainbowParenthesesLoadRound

set tabstop=4 shiftwidth=4 expandtab

filetype plugin indent on
