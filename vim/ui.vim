" ------------------ UI Stuff! --------------------
set number           " Line numbers
set mouse=a          " Allow mouse in dire situations
set laststatus=2     " *Always* show status line

" -------------- Searching ----------------
set inccommand=split     " Open search results in a split window
set hlsearch             " Highlight all matches
set incsearch            " Highlight searches as you type
set ignorecase smartcase " Only be case sensitive if a letter is capitalized

colorscheme Monokai

" Indicate currently active window
augroup BgHighlight
	autocmd!
	autocmd WinEnter * set cul
	autocmd WinLeave * set nocul
augroup END


set tabstop=4 shiftwidth=4 expandtab
