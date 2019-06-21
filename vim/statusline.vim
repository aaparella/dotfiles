set laststatus=2 " Show the status line at all times

set statusline=          " Start from blank line
set statusline+=\ %f     " File name
set statusline+=%=       " Switch to the right side
set statusline+=\ %y     " File type
set statusline+=\ %4l:%c " Line and Column
set statusline+=\        " Empty padding
