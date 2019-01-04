" ------------------- Plugins! -----------------------
" Actively trying to use as few plugins as is possible
" You can see how well that's worked out
call plug#begin()
Plug     'dbeniamine/cheat.sh-vim'
Plug       'rizzatti/dash.vim'
Plug       'junegunn/fzf',                     { 'dir': '~/.fzf', 'do': './install --all' }
Plug       'junegunn/goyo.vim',                { 'for': 'markdown' }
Plug        'itchyny/lightline.vim'
Plug     'scrooloose/nerdtree',                { 'on': 'NERDTreeToggle' }
Plug         'albfan/nerdtree-git-plugin'
Plug    'elixir-lang/vim-elixir',              { 'for': 'elixir' }
Plug          'flazz/vim-colorschemes'
Plug          'tpope/vim-commentary'
Plug          'tpope/vim-fugitive'
Plug          'mhinz/vim-grepper',             { 'on': ['Grepper', '<plug>(GrepperOperator)'] }
Plug 'ludovicchabant/vim-gutentags'
Plug          'fatih/vim-go',                  { 'for': 'go' }
Plug        'sheerun/vim-polyglot'
Plug       'airblade/vim-rooter'
Plug     'derekwyatt/vim-scala',               { 'for' : 'scala' }
Plug           'kien/rainbow_parentheses.vim', { 'for' : 'clojure' }
Plug         'octref/RootIgnore'
Plug      'rust-lang/rust.vim',                { 'for' : 'rust' }
Plug          'keith/swift.vim',               { 'for' : 'swift' }
Plug     'majutsushi/tagbar',                  { 'on'  : 'Tagbar' }
call plug#end()

" ----------- Plugin Mappings / Config --------------

" Lightline
let g:lightline = {
  \ 'colorscheme': 'wombat',
  \ }

" vim-grepper
nmap gs <plug>(GrepperOperator)

" vim-airline
let g:airline_theme='monochrome'

" nerdtree
let NERDTreeRespectWildIgnore=1   

" vim-go
let g:go_fmt_command = "goimports"
