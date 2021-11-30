let mapleader=" " 

filetype plugin indent on
syntax enable                     " Enables syntax hughlighting     

set iskeyword+=-                 " Treat dash seperated words as a word text object"
" <	A more exotic example, to jump between the '=' and ';' in an
"     assignment, useful for languages like C and Java: >
"         :au FileType c,cpp,java set mps+==:;
set matchpairs+=<:>

set nocompatible
set noshowmode                  " We don't need to see things like -- INSERT -- anymore
set termguicolors 
set noerrorbells

set number                      " Line numbers" 

set encoding=utf-8
set fileencoding=utf-8

set laststatus=2                " Always display the status line 

set nowrap                      " Display long lines as just one line
set smartcase
set noswapfile
set incsearch
set hlsearch!                   " Changes state of hlsearch to off
set tabstop=2
set softtabstop=2
set mouse=a                     " Enable your mouse 
set splitbelow                  " Horizontal splits will automatically be below"
set splitright                  " Vertical splits will automatically be to the right"
set t_Co=256                    " Support 256 colors
set conceallevel=0              " So that I can see `` in markdown files"
set expandtab                   " Convert tabs to spaces
set autoindent                  " Good auto indent
" set cursorline                  " Enable highlighting of the current line
set clipboard=unnamedplus
set showcmd
" set showmatch
set sw=2
set number relativenumber
set wildmenu
set hls
set smartindent
set smarttab                     " Makes tabbing smarter will realize you have 2 vs 4
set nobackup                     " This is recommended by coc
set nowritebackup                " This is recommended by coc
set updatetime=300               " Faster completion
set timeoutlen=500               " By default timeoutlen is 1000 ms
" set colorcolumn=80             "Useful to aligntext.  Will make screen redrawing slower.
set scrolloff=10
set showcmd
set ignorecase
set smartcase
set confirm 
set cmdheight=2   " More space for displaying messages
set signcolumn=yes
set laststatus=2
set hidden      " Required to keep multiple buffers open multiple buffers
set shiftwidth=2                " Change the number of space characters inserted for indentation

set shortmess+=c        " 	  c	don't give |ins-completion-menu| messages.  For example,
                        "-- XXX completion (YYY)", "match 1 of 2", "The only match",
                        "Pattern not found", "Back at original", etc.


" ======================== Set Python 3 provider ================

let g:python3_host_prog="/usr/local/bin/python3" 


" ======================= Disable Python 2 plugin support ========

let g:loaded_python_provider=0

" hi! TabLine    gui=NONE guibg=#3e4452 guifg=#abb2bf    cterm=NONE term=NONE ctermfg=black ctermbg=white

"  ====================== Plugins Installation ==================== 
"
" ===================== Plugin Manager =====================
so $HOME/.config/nvim/vim-plug/plugins.vim

runtime ./themes/set-theme.vim
" ==========================================================
so $HOME/.config/nvim/mappings.vim
"===========================================================

" so $HOME/.config/nvim/plugins-configs/vvmulti-settings.vim
" so $HOME/.config/nvim/plugins-configs/signify-settings.vim

" ============================================================
" LUA CONFIGURATION
" ============================l===============================

" Lua configuration
" nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
" nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
" nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
" nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
" nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
" nnoremap <silent> <C-K> <cmd>lua vim.lsp.buf.signature_help()<CR>
" nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
" nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>

" auto-format
" autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 100)
" autocmd BufWritePre *.jsx lua vim.lsp.buf.formatting_sync(nil, 100)
" autocmd BufWritePre *.py lua vim.lsp.buf.formatting_sync(nil, 100)
" Expand
" imap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
" smap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'

" " Expand or jump
" imap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
" smap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'

" " Jump forward or backward
" imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
" smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
" imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
" smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'

" Select or cut text to use as $TM_SELECTED_TEXT in the next snippet.
" See https://github.com/hrsh7th/vim-vsnip/pull/50
lua << EOF

local utils = require'utils'
--local util = require'utils/map'

-- TODO: rename _inspect 
-- wrapper for inspecting lua tables
_G._inspect = utils.inspect

-- wrapper for vim.api.nvim_set_keymap
--local ts = require'nvim-treesitter.configs'
--ts.setup { 
--  ensure_installed = 'maintained',
--  highlight = { 
--    enable = true,
--    disable = { "html" }, -- list of languages that will be disabled
--  },
--}
-- mappings

--map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', {silent = true})
--map('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', { silent = true })
--map('n', 'dr', '<cmd>lua vim.lsp.buf.references()<CR>', { silent = true })
--map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', { silent = true })
--map('n', '<C-R>', '<cmd>lua vim.lsp.buf.rename()<CR>', { silent = true })

-- util.noremap('n', '<C-s>', '<cmd>w<CR>')

EOF



