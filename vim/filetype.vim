" ------------------ FileType Configurations --------
" Go
autocmd FileType go set makeprg=go\ test\ ./...

" Clojure because I write in it so much, obviously
au FileType clojure RainbowParenthesesToggle
au FileType clojure RainbowParenthesesLoadRound
