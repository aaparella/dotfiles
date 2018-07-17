" ------------------ UI Stuff! --------------------
set incsearch        " Highlight searches as you type
set inccommand=split " Open search results in a split window
set hlsearch         " Highlight all matches
set number           " Line numbers
set mouse=a          " Allow mouse in dire situations
set laststatus=2     " *Always* show status line

colorscheme Monokai

" Indicate currently active window
augroup BgHighlight
	autocmd!
	autocmd WinEnter * set cul
	autocmd WinLeave * set nocul
augroup END


set tabstop=4 shiftwidth=4 expandtab
