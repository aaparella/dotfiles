set number
execute pathogen#infect()
filetype plugin indent on
syntax on
set hlsearch
set mouse=a

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
map <C-i> :TagbarToggle<CR>
map <C-n> :NERDTreeToggle<CR>
