" ------------------- Plugins! -----------------------
" Actively trying to use as few plugins as is possible
" You can see how well that's worked out
call plug#begin()
Plug       'junegunn/fzf',                     { 'dir': '~/.fzf', 'do': './install --all' }
Plug          'tpope/vim-commentary',
Plug          'mhinz/vim-grepper',             { 'on': ['Grepper', '<plug>(GrepperOperator)'] }
Plug 'ludovicchabant/vim-gutentags',
Plug          'fatih/vim-go',                  { 'for': 'go' }
Plug           'kien/rainbow_parentheses.vim', { 'for' : 'clojure' }
Plug      'rust-lang/rust.vim',                { 'for' : 'rust' }
Plug     'majutsushi/tagbar',                  { 'on'  : 'Tagbar' }
Plug 'itchyny/lightline.vim'
call plug#end()

" ----------- Plugin Mappings / Config --------------

" vim-grepper
nmap gs <plug>(GrepperOperator)

" vim-go
let g:go_fmt_command = "goimports"
let g:go_def_mode = 'godef'

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

" vim-airline
let g:airline_extensions = []
