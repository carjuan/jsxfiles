
"
"===== Allows tmux to control background color
"===== if tmux is not the current terminal, then alacritty's
"===== background color takes over
"
hi! Normal guibg=NONE ctermbg=NONE

hi! EndOfBuffer guibg=NONE

hi! SignColumn guibg=NONE

hi! SignifySignAdd guibg=NONE

hi! SignifySignChange guibg=NONE

hi! SignifySignDelete guibg=NONE

hi! LineNr guibg=NONE

hi! DiffAdd guibg=NONE

hi! DiffChange guibg=NONE

hi! DiffDelete guibg=NONE

hi! WinSeparator guifg=#ffffff guibg=#262626
" =========== THEME SPECIFICS ===================
" Adwaita 
" hi! LineNr guifg=#b2b2b2
"
" SPACECAMP
" Needed for spacecamp theme when <Normal hi = NONE>
" to remove black for transparancy bg
" hi! NonText guibg=NONE ctermbg=NONE


" GOTHAM
" Needed for spacecamp theme when <Normal hi = NONE>
" to remove black for transparancy bg
" hi! NonText guibg=NONE ctermbg=NONE




" hi! Normal guifg=NONE ctermfg=NONE
" highlight normal guibg=none
" highlight SignColumn guibg=NONE

" hi! LineNr guifg=#75b0ca
" hi! CursorLineNr guifg=#75b0ca
" =========== Add custom gruvbox hi colors ===========
" changes gruvbox js string colors
" hi! TSString guifg=#D5DEC0
" Transparent background
" hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE
