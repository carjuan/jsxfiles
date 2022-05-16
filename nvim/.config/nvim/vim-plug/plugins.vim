" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

" ================ COLORSCHEMES UTILS ==========
Plug 'rktjmp/lush.nvim'

" ================ COLORSCHEMES ==========
Plug '~/.config/nvim/themes/colorthemes/gruvy'
Plug 'whatyouhide/vim-gotham', { 'dir': '~/.config/nvim/themes/colorthemes/gotham'}
Plug 'sainnhe/everforest', { 'dir': '~/.config/nvim/themes/colorthemes/everforest'} 
Plug 'ellisonleao/gruvbox.nvim', { 'dir': '~/.config/nvim/themes/colorthemes/gruvbox'}
Plug 'jaredgorski/spacecamp', { 'dir': '~/.config/nvim/themes/colorthemes/spacecamp'}
Plug 'challenger-deep-theme/vim', { 'dir': '~/.config/nvim/themes/colorthemes/challenger-deep', 'name': 'challenger-deep-theme' }
"  ==================================

" ======== Find and Replace =======

" Plug 'brooth/far.vim'

" ==================================

" =========== Status Line ==================== 
Plug 'hoob3rt/lualine.nvim'
" If you want to have icons in your statusline choose one of these
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'
 
"For vim-plug users, the following line must be added
Plug 'terrortylor/nvim-comment'
Plug 'JoosepAlviste/nvim-ts-context-commentstring'

" Git Integration
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
" signify changes in Git file tracked files
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-rhubarb'
" =============================================

" =============== LSP config =================
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'
Plug 'folke/trouble.nvim'
" ============================================

" ================ Telescope ================
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
" ==========================================


Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/vim-vsnip'
" Provides symbols/icons to LSP completion (nvim-cmp) sources
Plug 'onsails/lspkind.nvim'
"Plug 'saadparwaiz1/cmp_luasnip'
Plug 'hrsh7th/cmp-path'
" Making plugins
Plug 'tpope/vim-scriptease'

" Typing
Plug 'tpope/vim-surround'
Plug 'alvan/vim-closetag'
Plug 'mattn/emmet-vim'

Plug 'windwp/nvim-autopairs'

" Sessions
Plug 'tpope/vim-obsession'


" All of your Plugins must be added before the following line
call plug#end()

" closetag
let g:closetag_filenames = '*.html,*.js,*.jsx,*.ts,*.tsx'


" Rainbow parens configs ============================================
let g:rainbow_active = 1

" Polyglot javascript package configs ========================
let g:javascript_plugin_jsdoc = 1

" NERDCOMMENTER" ==============================================

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1




lua << EOF
-- vim.g.tokyodark_transparent_background = true 
-- vim.g.tokyodark_enable_italic_comment = true
-- vim.g.tokyodark_enable_italic = true
-- vim.g.tokyodark_color_gamma = '1.0'
EOF

" Git Integration ========
" section_left = '',
"%t\ "
"
"
" set tabline=
" " set tabline+=%([%#TabLineSel#%{&fileformat}]%)
" " Adds white bg and grey fg color
" set tabline+=%#Visual#
" " Adds two spaces + file (tail) in the buffer | two spaces
" set tabline+=%\ \ \ %6F\ \  
" " Adds white fg color for  symbol
" set tabline+=%#MyHighlight#
" set tabline+=
" " Removes bg and fg for the rest of tabline 
" set tabline+=%#NonText#

" hi User1 term=inverse,bold cterm=inverse,bold ctermfg=red

" hi! TabLine gui=NONE guibg=#3e4452 guifg=#abb2bf 
" hi! TabLineSel gui=NONE guibg=Red guifg=Blue
" hi! MyHighlight gui=NONE guifg=241
" hi! TabLineFill ctermfg=LightGreen ctermbg=DarkGreen
" hi! TabLine ctermfg=Blue ctermbg=Yellow
" hi! TabLineSel ctermfg=Red ctermbg=Yellow

" :SignifyToggle 
" :SignifyToggleHighlight
" :GGrep - Rg for git files
" :Git add
" :Git commit
" :Git push
" :Git diff
" :Git log
" :Git blame
" :Gdiffsplit
" :GRemove
" :GBrowse
" :GV open commit browser
