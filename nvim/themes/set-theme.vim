set background=dark
let g:gruvbox_contrast_dark = 'dark'

colorscheme gruvbox

color js

" colorscheme spacecamp
" We have to load the colorscheme first
" and then customize the other colors
" color js

"colorscheme configs ===========================================

" sets colors/* to be loaded 
" this is unecessary since at runtime, $XDG_CONFIG_DIRS/colors is loaded
" runtime ./colors/NeoSolarized.vim
if exists("&winblend")
  set winblend=0
endif

set wildoptions=pum
set pumblend=5
" Use NeoSolarized
let g:neosolarized_termtrans=1

"

