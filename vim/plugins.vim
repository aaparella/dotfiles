" ------------------- Plugins! -----------------------
" Actively trying to use as few plugins as is possible
" You can see how well that's worked out
call plug#begin()
Plug        'mileszs/ack.vim'
Plug     'dbeniamine/cheat.sh-vim'
Plug       'junegunn/fzf',                     { 'dir': '~/.fzf', 'do': './install --all' }
Plug     'scrooloose/nerdtree',                { 'on': 'NERDTreeToggle' }
Plug    'vim-airline/vim-airline'
Plug    'vim-airline/vim-airline-themes'
Plug         'albfan/nerdtree-git-plugin'
Plug    'elixir-lang/vim-elixir',              { 'for': 'elixir' }
Plug          'flazz/vim-colorschemes'
Plug          'tpope/vim-commentary'
Plug          'mhinz/vim-grepper'
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

" ----------- Plugin Mappings / Config --------------

" vim-grepper
nmap gs <plug>(GrepperOperator)

" vim-airline
let g:airline_theme='minimalist'

" nerdtree
let NERDTreeRespectWildIgnore=1   

" vim-go
let g:go_fmt_command = "goimports"
