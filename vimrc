filetype off
set rtp+=~/.vim/bundle/Vundle.vim
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
nmap <F8> :TagbarToggle<CR>

augroup BgHighlight
	autocmd!
	autocmd WinEnter * set cul
	autocmd WinLeave * set nocul
augroup END

set listchars=tab:>-,trail:-
let g:airline_theme='monochrome'

hi CursorLine term=bold cterm=bold guibg=Grey40
set tabstop=4 shiftwidth=4 expandtab

let g:go_fmt_command = "goimports"
let g:ctrlp_user_command = 'ag %s -l --hidden --nocolo -g ""'
let g:ctrlp_use_caching = 0

let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_etra_conf.py'
