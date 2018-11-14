" ------------------ FileType Configurations --------
" Go
autocmd FileType go set makeprg=go\ test\ ./...

autocmd FileType rust set makeprg=cargo\ build

" Clojure because I write in it so much, obviously
au FileType clojure RainbowParenthesesToggle
au FileType clojure RainbowParenthesesLoadRound
