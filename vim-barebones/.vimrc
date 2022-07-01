
" 
" =======================================================================================================================================
"
"       °              _                       __  '                  __        '        _  '    
"                .´/: : :/:`;             ,·:'´/::::/'`;·.,         .:'´:::::/`:·.          /.;/';°   
"               /:/:_: /:::'i         .:´::::/::::/:::::::`;     '/::::::::/:::::/`:,     /::/:`'; °        Juanse
"              /·´     '`;:::;'       /:;:· '´ ¯¯'`^·-;::::/' ‘  /· '´ ¯¯ `'~·./:::::`;:´¯'`:;:/'           https://github.com/carjuan
"              i         'i::;       /·´           _   '`;/‘     '`·.             `·:;:'/      ,'/' '  ‚
"              ';        'i::;°     'i            ;::::'`;*           `·.            '`'      ,·' '  '  ‚
"     ,. -.,   ';        ';::;       `;           '`;:::::'`:,           ';              .,·'´   °     
"    /:::::/`:.,;       ';::;'         `·,           '`·;:::::';      ,·´               i:';           
"   /;:-:;/:::::'|       ;:/`;‘      ,~:-'`·,           `:;::/'   ,·´      ,           ';::'`:., °    
" ,´      `·:;:·'       ;/'::/      /:::::::::';           ';/    ,'      ,':´';           ';::::::'`:*;'
" ';                     `;/'     ,:~·- . -·'´          ,'´      i      ';::/ '`·,         '`·:;:::::/ 
"   '`·,           _,.-·'´ °     '`·,               , ·'´        ';      ';/     '`·.,          '`*;/  
"        '`'*^*'´¯    ”               '`*^·–·^*'´'           ‘   '`~-·'´            `*^·–·^*'´     
"
" =======================================================================================================================================

                                                                                                                                           
                                                                                                                                            
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



set nowrap                      " Display long lines as just one line
set smartcase
set noswapfile
set incsearch
set hlsearch!                   " Changes state of hlsearch to off
set tabstop=4
set softtabstop=4
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
set laststatus=3                " Always display the status line 
set hidden      " Required to keep multiple buffers open multiple buffers
set shiftwidth=4                " Change the number of space characters inserted for indentation

set shortmess+=c        " 	  c	don't give |ins-completion-menu| messages.  For example,
                        "-- XXX completion (YYY)", "match 1 of 2", "The only match",
                        "Pattern not found", "Back at original", etc.

set nohlsearch
set foldmethod=manual


                        " Stop auto commenting
set formatoptions-=cro


" ======================== Set Python 3 provider ================

let g:python3_host_prog="/usr/bin/python3" 


" ======================= Disable Python 2 plugin support ========

let g:loaded_python_provider=0
