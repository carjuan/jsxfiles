
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


inoremap jj <esc>
                                                                                                                                           
let mapleader=" " 

filetype plugin indent on
syntax enable                     " Enables syntax hughlighting     

set iskeyword+=-                 " Treat dash seperated words as a word text object"
" <	A more exotic example, to jump between the '=' and ';' in an
"     assignment, useful for languages like C and Java: >
"         :au FileType c,cpp,java set mps+==:;
set matchpairs+=<:>

set nocompatible
set termguicolors 
set noerrorbells

set number                      " Line numbers" 
set encoding=utf-8
set noshowmode


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

" Use a line cursor within insert mode and a block cursor everywhere else.
"
" Reference chart of values:
"   Ps = 0  -> blinking block.
"   Ps = 1  -> blinking block (default).
"   Ps = 2  -> steady block.
"   Ps = 3  -> blinking underline.
"   Ps = 4  -> steady underline.
"   Ps = 5  -> blinking bar (xterm).
"   Ps = 6  -> steady bar (xterm).
let &t_SI = "\e[5 q"
let &t_EI = "\e[2 q"

" =========== THEME SPECIFICS ===================
" Gruvbox
" 
" Highlights only the number in cursor line
hi! CursorLineNr guifg=#ff8700 guibg=NONE
set cursorline
set cursorlineopt=number

" prevent typo when pressing `wq` or `q`
cnoreabbrev <expr> W ((getcmdtype() is# ':' && getcmdline() is# 'W')?('w'):('W'))
cnoreabbrev <expr> Q ((getcmdtype() is# ':' && getcmdline() is# 'Q')?('q'):('Q'))
cnoreabbrev <expr> WQ ((getcmdtype() is# ':' && getcmdline() is# 'WQ')?('wq'):('WQ'))
cnoreabbrev <expr> Wq ((getcmdtype() is# ':' && getcmdline() is# 'Wq')?('wq'):('Wq'))

" Name:         Gruvbox 8 Hard
" Description:  Retro groove color scheme originally designed by morhetz
" Author:       morhetz <morhetz@gmail.com>
" Maintainer:   Lifepillar <lifepillar@lifepillar.me>
" Website:      https://github.com/lifepillar/vim-gruvbox8/
" License:      Vim License (see `:help license`)
" Last Updated: Sun Mar 20 16:00:33 2022

" Generated by Colortemplate v2.2.0

hi clear
let g:colors_name = 'gruvbox8_hard'

let s:t_Co = exists('&t_Co') && !empty(&t_Co) && &t_Co > 1 ? &t_Co : 1
let s:italics = (&t_ZH != '' && &t_ZH != '[7m') || has('gui_running') || has('nvim')

let s:italics = s:italics && get(g:, 'gruvbox_italics', 1)
hi! link CursorColumn CursorLine
hi! link QuickFixLine Search
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi! link VisualNOS Visual
hi! link Tag Special
hi! link lCursor Cursor
hi! link iCursor Cursor
hi! link vCursor Cursor

if &background ==# 'dark'
  if (has('termguicolors') && &termguicolors) || has('gui_running')
    let g:terminal_ansi_colors = ['#1d2021', '#cc241d', '#98971a', '#d79921', '#458588', '#b16286', '#689d6a', '#a89984', '#928374', '#fb4934', '#b8bb26', '#fabd2f', '#83a598', '#d3869b', '#8ec07c', '#ebdbb2']
  endif
  if has('nvim')
    let g:terminal_color_0 = '#1d2021'
    let g:terminal_color_1 = '#cc241d'
    let g:terminal_color_2 = '#98971a'
    let g:terminal_color_3 = '#d79921'
    let g:terminal_color_4 = '#458588'
    let g:terminal_color_5 = '#b16286'
    let g:terminal_color_6 = '#689d6a'
    let g:terminal_color_7 = '#a89984'
    let g:terminal_color_8 = '#928374'
    let g:terminal_color_9 = '#fb4934'
    let g:terminal_color_10 = '#b8bb26'
    let g:terminal_color_11 = '#fabd2f'
    let g:terminal_color_12 = '#83a598'
    let g:terminal_color_13 = '#d3869b'
    let g:terminal_color_14 = '#8ec07c'
    let g:terminal_color_15 = '#ebdbb2'
  endif
  if get(g:, 'gruvbox_transp_bg', 0) && !has('gui_running')
    hi Normal guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi CursorLineNr guifg=#fabd2f guibg=NONE gui=NONE cterm=NONE
    hi FoldColumn guifg=#928374 guibg=NONE gui=NONE cterm=NONE
    hi SignColumn guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi VertSplit guifg=#665c54 guibg=NONE gui=NONE cterm=NONE
  else
    hi Normal guifg=#ebdbb2 guibg=#1d2021 gui=NONE cterm=NONE
    hi CursorLineNr guifg=#fabd2f guibg=#3c3836 gui=NONE cterm=NONE
    hi FoldColumn guifg=#928374 guibg=#3c3836 gui=NONE cterm=NONE
    hi SignColumn guifg=#ebdbb2 guibg=#3c3836 gui=NONE cterm=NONE
    hi VertSplit guifg=#665c54 guibg=#1d2021 gui=NONE cterm=NONE
  endif
  hi ColorColumn guifg=NONE guibg=#3c3836 gui=NONE cterm=NONE
  hi Comment guifg=#928374 guibg=NONE gui=italic cterm=italic
  hi CursorLine guifg=NONE guibg=#3c3836 gui=NONE cterm=NONE
  hi Error guifg=#fb4934 guibg=#1d2021 gui=bold,reverse cterm=bold,reverse
  hi ErrorMsg guifg=#1d2021 guibg=#fb4934 gui=bold cterm=bold
  hi Folded guifg=#928374 guibg=#3c3836 gui=italic cterm=italic
  hi LineNr guifg=#7c6f64 guibg=NONE gui=NONE cterm=NONE
  hi MatchParen guifg=NONE guibg=#504945 gui=bold,underline cterm=bold,underline
  hi NonText guifg=#504945 guibg=NONE gui=NONE cterm=NONE
  hi Pmenu guifg=#ebdbb2 guibg=#504945 gui=NONE cterm=NONE
  hi PmenuSbar guifg=NONE guibg=#504945 gui=NONE cterm=NONE
  hi PmenuSel guifg=#504945 guibg=#83a598 gui=bold cterm=bold
  hi PmenuThumb guifg=NONE guibg=#7c6f64 gui=NONE cterm=NONE
  hi SpecialKey guifg=#928374 guibg=NONE gui=NONE cterm=NONE
  hi StatusLine guifg=#504945 guibg=#ebdbb2 gui=reverse cterm=reverse
  hi StatusLineNC guifg=#3c3836 guibg=#a89984 gui=reverse cterm=reverse
  hi TabLine guifg=#7c6f64 guibg=#3c3836 gui=NONE cterm=NONE
  hi TabLineFill guifg=#7c6f64 guibg=#3c3836 gui=NONE cterm=NONE
  hi TabLineSel guifg=#b8bb26 guibg=#3c3836 gui=NONE cterm=NONE
  hi ToolbarButton guifg=#fbf1c7 guibg=#665c54 gui=bold cterm=bold
  hi ToolbarLine guifg=NONE guibg=#665c54 gui=NONE cterm=NONE
  hi Visual guifg=NONE guibg=#665c54 gui=NONE cterm=NONE
  hi WildMenu guifg=#83a598 guibg=#504945 gui=bold cterm=bold
  hi Conceal guifg=#83a598 guibg=NONE gui=NONE cterm=NONE
  hi Cursor guifg=NONE guibg=NONE gui=reverse ctermfg=NONE ctermbg=NONE cterm=reverse
  hi DiffAdd guifg=#b8bb26 guibg=#1d2021 gui=reverse cterm=reverse
  hi DiffChange guifg=#8ec07c guibg=#1d2021 gui=reverse cterm=reverse
  hi DiffDelete guifg=#fb4934 guibg=#1d2021 gui=reverse cterm=reverse
  hi DiffText guifg=#fabd2f guibg=#1d2021 gui=reverse cterm=reverse
  hi Directory guifg=#b8bb26 guibg=NONE gui=bold cterm=bold
  hi EndOfBuffer guifg=#1d2021 guibg=NONE gui=NONE cterm=NONE
  hi IncSearch guifg=#fe8019 guibg=#1d2021 gui=reverse cterm=reverse
  hi ModeMsg guifg=#fabd2f guibg=NONE gui=bold cterm=bold
  hi MoreMsg guifg=#fabd2f guibg=NONE gui=bold cterm=bold
  hi Question guifg=#fe8019 guibg=NONE gui=bold cterm=bold
  hi Search guifg=#fabd2f guibg=#1d2021 gui=reverse cterm=reverse
  hi SpellBad guifg=#fb4934 guibg=NONE guisp=#fb4934 gui=italic,undercurl cterm=italic,underline
  hi SpellCap guifg=#83a598 guibg=NONE guisp=#83a598 gui=italic,undercurl cterm=italic,underline
  hi SpellLocal guifg=#8ec07c guibg=NONE guisp=#8ec07c gui=italic,undercurl cterm=italic,underline
  hi SpellRare guifg=#d3869b guibg=NONE guisp=#d3869b gui=italic,undercurl cterm=italic,underline
  hi Title guifg=#b8bb26 guibg=NONE gui=bold cterm=bold
  hi WarningMsg guifg=#fb4934 guibg=NONE gui=bold cterm=bold
  hi Boolean guifg=#d3869b guibg=NONE gui=NONE cterm=NONE
  hi Character guifg=#d3869b guibg=NONE gui=NONE cterm=NONE
  hi Conditional guifg=#fb4934 guibg=NONE gui=NONE cterm=NONE
  hi Constant guifg=#d3869b guibg=NONE gui=NONE cterm=NONE
  hi Define guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
  hi Debug guifg=#fb4934 guibg=NONE gui=NONE cterm=NONE
  hi Delimiter guifg=#fe8019 guibg=NONE gui=NONE cterm=NONE
  hi Error guifg=#fb4934 guibg=#1d2021 gui=bold,reverse cterm=bold,reverse
  hi Exception guifg=#fb4934 guibg=NONE gui=NONE cterm=NONE
  hi Float guifg=#d3869b guibg=NONE gui=NONE cterm=NONE
  hi Function guifg=#b8bb26 guibg=NONE gui=bold cterm=bold
  hi Identifier guifg=#83a598 guibg=NONE gui=NONE cterm=NONE
  hi Ignore guifg=fg guibg=NONE gui=NONE cterm=NONE
  hi Include guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
  hi Keyword guifg=#fb4934 guibg=NONE gui=NONE cterm=NONE
  hi Label guifg=#fb4934 guibg=NONE gui=NONE cterm=NONE
  hi Macro guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
  hi Number guifg=#d3869b guibg=NONE gui=NONE cterm=NONE
  hi Operator guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
  hi PreCondit guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
  hi PreProc guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
  hi Repeat guifg=#fb4934 guibg=NONE gui=NONE cterm=NONE
  hi SpecialChar guifg=#fb4934 guibg=NONE gui=NONE cterm=NONE
  hi SpecialComment guifg=#fb4934 guibg=NONE gui=NONE cterm=NONE
  hi Statement guifg=#fb4934 guibg=NONE gui=NONE cterm=NONE
  hi StorageClass guifg=#fe8019 guibg=NONE gui=NONE cterm=NONE
  hi Special guifg=#fe8019 guibg=NONE gui=italic cterm=italic
  hi String guifg=#b8bb26 guibg=NONE gui=italic cterm=italic
  hi Structure guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
  hi Todo guifg=fg guibg=#1d2021 gui=bold,italic cterm=bold,italic
  hi Type guifg=#fabd2f guibg=NONE gui=NONE cterm=NONE
  hi Typedef guifg=#fabd2f guibg=NONE gui=NONE cterm=NONE
  hi Underlined guifg=#83a598 guibg=NONE guisp=#83a598 gui=underline cterm=underline
  hi CursorIM guifg=NONE guibg=NONE gui=reverse ctermfg=NONE ctermbg=NONE cterm=reverse
  if !s:italics
    hi Comment gui=NONE cterm=NONE
    hi Folded gui=NONE cterm=NONE
    hi SpellBad gui=undercurl cterm=underline
    hi SpellCap gui=undercurl cterm=underline
    hi SpellLocal gui=undercurl cterm=underline
    hi SpellRare gui=undercurl cterm=underline
    hi Special gui=NONE cterm=NONE
    hi String gui=NONE cterm=NONE
    hi Todo gui=bold cterm=bold
  endif
  if !get(g:, 'gruvbox_italicize_strings', 1)
    hi Special gui=NONE cterm=NONE
    hi String gui=NONE cterm=NONE
  endif
  if !get(g:, 'gruvbox_bold', 1)
    hi Directory gui=NONE cterm=NONE
    hi Error gui=reverse cterm=reverse
    hi ErrorMsg gui=NONE cterm=NONE
    hi Function gui=NONE cterm=NONE
    hi MatchParen gui=underline cterm=underline
    hi ModeMsg gui=NONE cterm=NONE
    hi MoreMsg gui=NONE cterm=NONE
    hi PmenuSel gui=NONE cterm=NONE
    hi Question gui=NONE cterm=NONE
    hi Title gui=NONE cterm=NONE
    hi Todo gui=italic cterm=italic
    hi ToolbarButton gui=NONE cterm=NONE
    hi WarningMsg gui=NONE cterm=NONE
    hi WildMenu gui=NONE cterm=NONE
  endif
  hi NormalMode guifg=#a89984 guibg=#1d2021 gui=reverse cterm=reverse
  hi InsertMode guifg=#83a598 guibg=#1d2021 gui=reverse cterm=reverse
  hi ReplaceMode guifg=#8ec07c guibg=#1d2021 gui=reverse cterm=reverse
  hi VisualMode guifg=#fe8019 guibg=#1d2021 gui=reverse cterm=reverse
  hi CommandMode guifg=#d3869b guibg=#1d2021 gui=reverse cterm=reverse
  hi Warnings guifg=#fe8019 guibg=#1d2021 gui=reverse cterm=reverse
  if has('nvim')
    hi! link TermCursor Cursor
    hi TermCursorNC guifg=#3c3836 guibg=#ebdbb2 gui=NONE cterm=NONE
  endif
  if get(g:, "gruvbox_plugin_hi_groups", 1)
    hi ALEError guifg=NONE guibg=NONE guisp=#fb4934 gui=undercurl ctermfg=NONE ctermbg=NONE cterm=underline
    hi ALEWarning guifg=NONE guibg=NONE guisp=#fb4934 gui=undercurl ctermfg=NONE ctermbg=NONE cterm=underline
    hi ALEInfo guifg=NONE guibg=NONE guisp=#83a598 gui=undercurl ctermfg=NONE ctermbg=NONE cterm=underline
    hi ALEErrorSign guifg=#fb4934 guibg=#3c3836 gui=NONE cterm=NONE
    hi ALEWarningSign guifg=#fabd2f guibg=#3c3836 gui=NONE cterm=NONE
    hi ALEInfoSign guifg=#83a598 guibg=#3c3836 gui=NONE cterm=NONE
    hi BufTabLineCurrent guifg=#1d2021 guibg=#a89984 gui=NONE cterm=NONE
    hi BufTabLineActive guifg=#a89984 guibg=#504945 gui=NONE cterm=NONE
    hi BufTabLineHidden guifg=#7c6f64 guibg=#3c3836 gui=NONE cterm=NONE
    hi BufTabLineFill guifg=#1d2021 guibg=#1d2021 gui=NONE cterm=NONE
    hi CocErrorSign guifg=#fb4934 guibg=#3c3836 gui=NONE cterm=NONE
    hi CocWarningSign guifg=#fe8019 guibg=#3c3836 gui=NONE cterm=NONE
    hi CocInfoSign guifg=#fabd2f guibg=#3c3836 gui=NONE cterm=NONE
    hi CocHintSign guifg=#83a598 guibg=#3c3836 gui=NONE cterm=NONE
    hi CocErrorFloat guifg=#fb4934 guibg=NONE gui=NONE cterm=NONE
    hi CocWarningFloat guifg=#fe8019 guibg=NONE gui=NONE cterm=NONE
    hi CocInfoFloat guifg=#fabd2f guibg=NONE gui=NONE cterm=NONE
    hi CocHintFloat guifg=#83a598 guibg=NONE gui=NONE cterm=NONE
    hi CtrlPMatch guifg=#fabd2f guibg=NONE gui=NONE cterm=NONE
    hi CtrlPNoEntries guifg=#fb4934 guibg=NONE gui=NONE cterm=NONE
    hi CtrlPPrtBase guifg=#504945 guibg=NONE gui=NONE cterm=NONE
    hi CtrlPPrtCursor guifg=#83a598 guibg=NONE gui=NONE cterm=NONE
    hi CtrlPLinePre guifg=#504945 guibg=NONE gui=NONE cterm=NONE
    hi CtrlPMode1 guifg=#83a598 guibg=#504945 gui=bold cterm=bold
    hi CtrlPMode2 guifg=#1d2021 guibg=#83a598 gui=bold cterm=bold
    hi CtrlPStats guifg=#a89984 guibg=#504945 gui=bold cterm=bold
    if !get(g:, 'gruvbox_bold', 1)
      hi CtrlPMode1 gui=NONE cterm=NONE
      hi CtrlPMode2 gui=NONE cterm=NONE
      hi CtrlPStats gui=NONE cterm=NONE
    endif
    hi DirvishPathTail guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi DirvishArg guifg=#fabd2f guibg=NONE gui=NONE cterm=NONE
    hi! link EasyMotionTarget Search
    hi! link EasyMotionShade Comment
    hi gitcommitSelectedFile guifg=#b8bb26 guibg=NONE gui=NONE cterm=NONE
    hi gitcommitDiscardedFile guifg=#fb4934 guibg=NONE gui=NONE cterm=NONE
    if get(g:, 'gruvbox_transp_bg', 0)
      hi GitGutterAdd guifg=#b8bb26 guibg=NONE gui=NONE cterm=NONE
      hi GitGutterChange guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
      hi GitGutterDelete guifg=#fb4934 guibg=NONE gui=NONE cterm=NONE
      hi GitGutterChangeDelete guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    else
      hi GitGutterAdd guifg=#b8bb26 guibg=#3c3836 gui=NONE cterm=NONE
      hi GitGutterChange guifg=#8ec07c guibg=#3c3836 gui=NONE cterm=NONE
      hi GitGutterDelete guifg=#fb4934 guibg=#3c3836 gui=NONE cterm=NONE
      hi GitGutterChangeDelete guifg=#8ec07c guibg=#3c3836 gui=NONE cterm=NONE
    endif
    if get(g:, 'indent_guides_auto_colors', 0)
      if get(g:, 'gruvbox_invert_indent_guides', 0)
        hi IndentGuidesOdd guifg=#1d2021 guibg=#504945 gui=reverse cterm=reverse
        hi IndentGuidesEven guifg=#1d2021 guibg=#3c3836 gui=reverse cterm=reverse
      else
        hi IndentGuidesOdd guifg=#1d2021 guibg=#504945 gui=NONE cterm=NONE
        hi IndentGuidesEven guifg=#1d2021 guibg=#3c3836 gui=NONE cterm=NONE
      endif
    endif
    if !exists('g:indentLine_color_term')
      let g:indentLine_color_term = 239
    endif
    if !exists('g:indentLine_color_gui')
      let g:indentLine_color_gui = '#504945'
    endif
    hi LspDiagnosticsDefaultError guifg=#fb4934 guibg=NONE gui=NONE cterm=NONE
    hi LspDiagnosticsSignError guifg=#fb4934 guibg=#3c3836 gui=NONE cterm=NONE
    hi LspDiagnosticsUnderlineError guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
    hi LspDiagnosticsDefaultWarning guifg=#fe8019 guibg=NONE gui=NONE cterm=NONE
    hi LspDiagnosticsSignWarning guifg=#fe8019 guibg=#3c3836 gui=NONE cterm=NONE
    hi LspDiagnosticsUnderlineWarning guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
    hi LspDiagnosticsDefaultInformation guifg=#fabd2f guibg=NONE gui=NONE cterm=NONE
    hi LspDiagnosticsSignInformation guifg=#fabd2f guibg=#3c3836 gui=NONE cterm=NONE
    hi LspDiagnosticsUnderlineInformation guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
    hi LspDiagnosticsDefaultHint guifg=#83a598 guibg=NONE gui=NONE cterm=NONE
    hi LspDiagnosticsSignHint guifg=#83a598 guibg=#3c3836 gui=NONE cterm=NONE
    hi LspDiagnosticsUnderlineHint guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
    hi LanguageClientError guifg=#fb4934 guibg=NONE gui=NONE cterm=NONE
    hi LanguageClientErrorSign guifg=#fb4934 guibg=#1d2021 gui=NONE cterm=NONE
    hi LanguageClientWarning guifg=#fabd2f guibg=NONE gui=NONE cterm=NONE
    hi LanguageClientWarningSign guifg=#fabd2f guibg=#3c3836 gui=NONE cterm=NONE
    hi LangaugeClientInfo guifg=#83a598 guibg=NONE gui=NONE cterm=NONE
    hi LanguageClientInfoSign guifg=#83a598 guibg=#3c3836 gui=NONE cterm=NONE
    hi LanguageClientCodeLens guifg=#83a598 guibg=NONE gui=NONE cterm=NONE
    hi NERDTreeDir guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi NERDTreeDirSlash guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi NERDTreeOpenable guifg=#fe8019 guibg=NONE gui=NONE cterm=NONE
    hi NERDTreeClosable guifg=#fe8019 guibg=NONE gui=NONE cterm=NONE
    hi NERDTreeFile guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi NERDTreeExecFile guifg=#fabd2f guibg=NONE gui=NONE cterm=NONE
    hi NERDTreeUp guifg=#928374 guibg=NONE gui=NONE cterm=NONE
    hi NERDTreeCWD guifg=#b8bb26 guibg=NONE gui=NONE cterm=NONE
    hi NERDTreeHelp guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi NERDTreeToggleOn guifg=#b8bb26 guibg=NONE gui=NONE cterm=NONE
    hi NERDTreeToggleOff guifg=#fb4934 guibg=NONE gui=NONE cterm=NONE
    hi netrwDir guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi netrwClassify guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi netrwLink guifg=#928374 guibg=NONE gui=NONE cterm=NONE
    hi netrwSymLink guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi netrwExe guifg=#fabd2f guibg=NONE gui=NONE cterm=NONE
    hi netrwComment guifg=#928374 guibg=NONE gui=NONE cterm=NONE
    hi netrwList guifg=#83a598 guibg=NONE gui=NONE cterm=NONE
    hi netrwHelpCmd guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi netrwCmdSep guifg=#bdae93 guibg=NONE gui=NONE cterm=NONE
    hi netrwVersion guifg=#b8bb26 guibg=NONE gui=NONE cterm=NONE
    " Rainbow Parentheses
    if !exists('g:rbpt_colorpairs')
      let g:rbpt_colorpairs = [['blue', '#458588'], ['magenta', '#b16286'],
            \ ['red', '#cc241d'], ['166', '#d65d0e']]
    endif

    let g:rainbow_guifgs = [ '#d65d0e', '#cc241d', '#b16286', '#458588' ]
    let g:rainbow_ctermfgs = [ '166', 'red', 'magenta', 'blue' ]

    if !exists('g:rainbow_conf')
      let g:rainbow_conf = {}
    endif
    if !has_key(g:rainbow_conf, 'guifgs')
      let g:rainbow_conf['guifgs'] = g:rainbow_guifgs
    endif
    if !has_key(g:rainbow_conf, 'ctermfgs')
      let g:rainbow_conf['ctermfgs'] = g:rainbow_ctermfgs
    endif

    let g:niji_dark_colours = g:rbpt_colorpairs
    let g:niji_light_colours = g:rbpt_colorpairs
    hi ShowMarksHLl guifg=#83a598 guibg=#3c3836 gui=NONE cterm=NONE
    hi ShowMarksHLu guifg=#83a598 guibg=#3c3836 gui=NONE cterm=NONE
    hi ShowMarksHLo guifg=#83a598 guibg=#3c3836 gui=NONE cterm=NONE
    hi ShowMarksHLm guifg=#83a598 guibg=#3c3836 gui=NONE cterm=NONE
    hi SignifySignAdd guifg=#b8bb26 guibg=#3c3836 gui=NONE cterm=NONE
    hi SignifySignChange guifg=#8ec07c guibg=#3c3836 gui=NONE cterm=NONE
    hi SignifySignDelete guifg=#fb4934 guibg=#3c3836 gui=NONE cterm=NONE
    hi SignatureMarkText guifg=#83a598 guibg=#3c3836 gui=NONE cterm=NONE
    hi SignatureMarkerText guifg=#d3869b guibg=#3c3836 gui=NONE cterm=NONE
    hi StartifyBracket guifg=#bdae93 guibg=NONE gui=NONE cterm=NONE
    hi StartifyFile guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi StartifyNumber guifg=#83a598 guibg=NONE gui=NONE cterm=NONE
    hi StartifyPath guifg=#928374 guibg=NONE gui=NONE cterm=NONE
    hi StartifySlash guifg=#928374 guibg=NONE gui=NONE cterm=NONE
    hi StartifySection guifg=#fabd2f guibg=NONE gui=NONE cterm=NONE
    hi StartifySpecial guifg=#504945 guibg=NONE gui=NONE cterm=NONE
    hi StartifyHeader guifg=#fe8019 guibg=NONE gui=NONE cterm=NONE
    hi StartifyFooter guifg=#504945 guibg=NONE gui=NONE cterm=NONE
    hi SyntasticError guifg=NONE guibg=NONE guisp=#fb4934 gui=undercurl ctermfg=NONE ctermbg=NONE cterm=underline
    hi SyntasticWarning guifg=NONE guibg=NONE guisp=#fabd2f gui=undercurl ctermfg=NONE ctermbg=NONE cterm=underline
    hi SyntasticErrorSign guifg=#fb4934 guibg=#3c3836 gui=NONE cterm=NONE
    hi SyntasticWarningSign guifg=#fabd2f guibg=#3c3836 gui=NONE cterm=NONE
    hi multiple_cursors_cursor guifg=NONE guibg=NONE gui=reverse ctermfg=NONE ctermbg=NONE cterm=reverse
    hi multiple_cursors_visual guifg=NONE guibg=#504945 gui=NONE cterm=NONE
    let g:vimshell_escape_colors = [
          \ '#7c6f64', '#fb4934', '#b8bb26', '#fabd2f',
          \ '#83a598', '#d3869b', '#8ec07c', '#a89984',
          \ '#1d2021', '#fb4934', '#b8bb26', '#fe8019',
          \ '#83a598', '#d3869b', '#8ec07c', '#fbf1c7'
          \ ]
  endif
  if get(g:, "gruvbox_filetype_hi_groups", 1)
    hi diffAdded guifg=#b8bb26 guibg=NONE gui=NONE cterm=NONE
    hi diffRemoved guifg=#fb4934 guibg=NONE gui=NONE cterm=NONE
    hi diffChanged guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi diffFile guifg=#fe8019 guibg=NONE gui=NONE cterm=NONE
    hi diffNewFile guifg=#fabd2f guibg=NONE gui=NONE cterm=NONE
    hi diffLine guifg=#83a598 guibg=NONE gui=NONE cterm=NONE
    hi htmlTag guifg=#83a598 guibg=NONE gui=NONE cterm=NONE
    hi htmlEndTag guifg=#83a598 guibg=NONE gui=NONE cterm=NONE
    hi htmlTagName guifg=#8ec07c guibg=NONE gui=bold cterm=bold
    hi htmlArg guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi htmlScriptTag guifg=#d3869b guibg=NONE gui=NONE cterm=NONE
    hi htmlTagN guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi htmlSpecialTagName guifg=#8ec07c guibg=NONE gui=bold cterm=bold
    hi htmlLink guifg=#a89984 guibg=NONE gui=underline cterm=underline
    hi htmlSpecialChar guifg=#fe8019 guibg=NONE gui=NONE cterm=NONE
    hi htmlBold guifg=fg guibg=#1d2021 gui=bold cterm=bold
    hi htmlBoldUnderline guifg=fg guibg=#1d2021 gui=bold,underline cterm=bold,underline
    hi htmlBoldItalic guifg=fg guibg=#1d2021 gui=bold,italic cterm=bold,italic
    hi htmlBoldUnderlineItalic guifg=fg guibg=#1d2021 gui=bold,italic,underline cterm=bold,italic,underline
    hi htmlUnderline guifg=fg guibg=#1d2021 gui=underline cterm=underline
    hi htmlUnderlineItalic guifg=fg guibg=#1d2021 gui=italic,underline cterm=italic,underline
    hi htmlItalic guifg=fg guibg=#1d2021 gui=italic cterm=italic
    hi xmlTag guifg=#83a598 guibg=NONE gui=NONE cterm=NONE
    hi xmlEndTag guifg=#83a598 guibg=NONE gui=NONE cterm=NONE
    hi xmlTagName guifg=#83a598 guibg=NONE gui=NONE cterm=NONE
    hi xmlEqual guifg=#83a598 guibg=NONE gui=NONE cterm=NONE
    hi docbkKeyword guifg=#8ec07c guibg=NONE gui=bold cterm=bold
    hi xmlDocTypeDecl guifg=#928374 guibg=NONE gui=NONE cterm=NONE
    hi xmlDocTypeKeyword guifg=#d3869b guibg=NONE gui=NONE cterm=NONE
    hi xmlCdataStart guifg=#928374 guibg=NONE gui=NONE cterm=NONE
    hi xmlCdataCdata guifg=#d3869b guibg=NONE gui=NONE cterm=NONE
    hi dtdFunction guifg=#928374 guibg=NONE gui=NONE cterm=NONE
    hi dtdTagName guifg=#d3869b guibg=NONE gui=NONE cterm=NONE
    hi xmlAttrib guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi xmlProcessingDelim guifg=#928374 guibg=NONE gui=NONE cterm=NONE
    hi dtdParamEntityPunct guifg=#928374 guibg=NONE gui=NONE cterm=NONE
    hi dtdParamEntityDPunct guifg=#928374 guibg=NONE gui=NONE cterm=NONE
    hi xmlAttribPunct guifg=#928374 guibg=NONE gui=NONE cterm=NONE
    hi xmlEntity guifg=#fe8019 guibg=NONE gui=NONE cterm=NONE
    hi xmlEntityPunct guifg=#fe8019 guibg=NONE gui=NONE cterm=NONE
    hi vimCommentTitle guifg=#a89984 guibg=NONE gui=bold cterm=bold
    hi vimNotation guifg=#fe8019 guibg=NONE gui=NONE cterm=NONE
    hi vimBracket guifg=#fe8019 guibg=NONE gui=NONE cterm=NONE
    hi vimMapModKey guifg=#fe8019 guibg=NONE gui=NONE cterm=NONE
    hi vimFuncSID guifg=#bdae93 guibg=NONE gui=NONE cterm=NONE
    hi vimSetSep guifg=#bdae93 guibg=NONE gui=NONE cterm=NONE
    hi vimSep guifg=#bdae93 guibg=NONE gui=NONE cterm=NONE
    hi vimContinue guifg=#bdae93 guibg=NONE gui=NONE cterm=NONE
    hi clojureKeyword guifg=#83a598 guibg=NONE gui=NONE cterm=NONE
    hi clojureCond guifg=#fe8019 guibg=NONE gui=NONE cterm=NONE
    hi clojureSpecial guifg=#fe8019 guibg=NONE gui=NONE cterm=NONE
    hi clojureDefine guifg=#fe8019 guibg=NONE gui=NONE cterm=NONE
    hi clojureFunc guifg=#fabd2f guibg=NONE gui=NONE cterm=NONE
    hi clojureRepeat guifg=#fabd2f guibg=NONE gui=NONE cterm=NONE
    hi clojureCharacter guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi clojureStringEscape guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi clojureException guifg=#fb4934 guibg=NONE gui=NONE cterm=NONE
    hi clojureRegexp guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi clojureRegexpEscape guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi clojureRegexpCharClass guifg=#bdae93 guibg=NONE gui=bold cterm=bold
    hi! link clojureRegexpMod clojureRegexpCharClass
    hi! link clojureRegexpQuantifier clojureRegexpCharClass
    hi clojureParen guifg=#bdae93 guibg=NONE gui=NONE cterm=NONE
    hi clojureAnonArg guifg=#fabd2f guibg=NONE gui=NONE cterm=NONE
    hi clojureVariable guifg=#83a598 guibg=NONE gui=NONE cterm=NONE
    hi clojureMacro guifg=#fe8019 guibg=NONE gui=NONE cterm=NONE
    hi clojureMeta guifg=#fabd2f guibg=NONE gui=NONE cterm=NONE
    hi clojureDeref guifg=#fabd2f guibg=NONE gui=NONE cterm=NONE
    hi clojureQuote guifg=#fabd2f guibg=NONE gui=NONE cterm=NONE
    hi clojureUnquote guifg=#fabd2f guibg=NONE gui=NONE cterm=NONE
    hi cOperator guifg=#d3869b guibg=NONE gui=NONE cterm=NONE
    hi cStructure guifg=#fe8019 guibg=NONE gui=NONE cterm=NONE
    hi pythonBuiltin guifg=#fe8019 guibg=NONE gui=NONE cterm=NONE
    hi pythonBuiltinObj guifg=#fe8019 guibg=NONE gui=NONE cterm=NONE
    hi pythonBuiltinFunc guifg=#fe8019 guibg=NONE gui=NONE cterm=NONE
    hi pythonFunction guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi pythonDecorator guifg=#fb4934 guibg=NONE gui=NONE cterm=NONE
    hi pythonInclude guifg=#83a598 guibg=NONE gui=NONE cterm=NONE
    hi pythonImport guifg=#83a598 guibg=NONE gui=NONE cterm=NONE
    hi pythonRun guifg=#83a598 guibg=NONE gui=NONE cterm=NONE
    hi pythonCoding guifg=#83a598 guibg=NONE gui=NONE cterm=NONE
    hi pythonOperator guifg=#fb4934 guibg=NONE gui=NONE cterm=NONE
    hi pythonException guifg=#fb4934 guibg=NONE gui=NONE cterm=NONE
    hi pythonExceptions guifg=#d3869b guibg=NONE gui=NONE cterm=NONE
    hi pythonBoolean guifg=#d3869b guibg=NONE gui=NONE cterm=NONE
    hi pythonDot guifg=#bdae93 guibg=NONE gui=NONE cterm=NONE
    hi pythonConditional guifg=#fb4934 guibg=NONE gui=NONE cterm=NONE
    hi pythonRepeat guifg=#fb4934 guibg=NONE gui=NONE cterm=NONE
    hi pythonDottedName guifg=#b8bb26 guibg=NONE gui=bold cterm=bold
    hi cssBraces guifg=#83a598 guibg=NONE gui=NONE cterm=NONE
    hi cssFunctionName guifg=#fabd2f guibg=NONE gui=NONE cterm=NONE
    hi cssIdentifier guifg=#fe8019 guibg=NONE gui=NONE cterm=NONE
    hi cssClassName guifg=#b8bb26 guibg=NONE gui=NONE cterm=NONE
    hi cssColor guifg=#83a598 guibg=NONE gui=NONE cterm=NONE
    hi cssSelectorOp guifg=#83a598 guibg=NONE gui=NONE cterm=NONE
    hi cssSelectorOp2 guifg=#83a598 guibg=NONE gui=NONE cterm=NONE
    hi cssImportant guifg=#b8bb26 guibg=NONE gui=NONE cterm=NONE
    hi cssVendor guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi cssTextProp guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi cssAnimationProp guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi cssUIProp guifg=#fabd2f guibg=NONE gui=NONE cterm=NONE
    hi cssTransformProp guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi cssTransitionProp guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi cssPrintProp guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi cssPositioningProp guifg=#fabd2f guibg=NONE gui=NONE cterm=NONE
    hi cssBoxProp guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi cssFontDescriptorProp guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi cssFlexibleBoxProp guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi cssBorderOutlineProp guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi cssBackgroundProp guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi cssMarginProp guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi cssListProp guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi cssTableProp guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi cssFontProp guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi cssPaddingProp guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi cssDimensionProp guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi cssRenderProp guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi cssColorProp guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi cssGeneratedContentProp guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi javaScriptBraces guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi javaScriptFunction guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi javaScriptIdentifier guifg=#fb4934 guibg=NONE gui=NONE cterm=NONE
    hi javaScriptMember guifg=#83a598 guibg=NONE gui=NONE cterm=NONE
    hi javaScriptNumber guifg=#d3869b guibg=NONE gui=NONE cterm=NONE
    hi javaScriptNull guifg=#d3869b guibg=NONE gui=NONE cterm=NONE
    hi javaScriptParens guifg=#bdae93 guibg=NONE gui=NONE cterm=NONE
    hi javascriptImport guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi javascriptExport guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi javascriptClassKeyword guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi javascriptClassExtends guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi javascriptDefault guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi javascriptClassName guifg=#fabd2f guibg=NONE gui=NONE cterm=NONE
    hi javascriptClassSuperName guifg=#fabd2f guibg=NONE gui=NONE cterm=NONE
    hi javascriptGlobal guifg=#fabd2f guibg=NONE gui=NONE cterm=NONE
    hi javascriptEndColons guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi javascriptFuncArg guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi javascriptGlobalMethod guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi javascriptNodeGlobal guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi javascriptBOMWindowProp guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi javascriptArrayMethod guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi javascriptArrayStaticMethod guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi javascriptCacheMethod guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi javascriptDateMethod guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi javascriptMathStaticMethod guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi javascriptURLUtilsProp guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi javascriptBOMNavigatorProp guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi javascriptDOMDocMethod guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi javascriptDOMDocProp guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi javascriptBOMLocationMethod guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi javascriptBOMWindowMethod guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi javascriptStringMethod guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi javascriptVariable guifg=#fe8019 guibg=NONE gui=NONE cterm=NONE
    hi javascriptIdentifier guifg=#fe8019 guibg=NONE gui=NONE cterm=NONE
    hi javascriptClassSuper guifg=#fe8019 guibg=NONE gui=NONE cterm=NONE
    hi javascriptFuncKeyword guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi javascriptAsyncFunc guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi javascriptClassStatic guifg=#fe8019 guibg=NONE gui=NONE cterm=NONE
    hi javascriptOperator guifg=#fb4934 guibg=NONE gui=NONE cterm=NONE
    hi javascriptForOperator guifg=#fb4934 guibg=NONE gui=NONE cterm=NONE
    hi javascriptYield guifg=#fb4934 guibg=NONE gui=NONE cterm=NONE
    hi javascriptExceptions guifg=#fb4934 guibg=NONE gui=NONE cterm=NONE
    hi javascriptMessage guifg=#fb4934 guibg=NONE gui=NONE cterm=NONE
    hi javascriptTemplateSB guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi javascriptTemplateSubstitution guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi javascriptLabel guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi javascriptObjectLabel guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi javascriptPropertyName guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi javascriptLogicSymbols guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi javascriptArrowFunc guifg=#fabd2f guibg=NONE gui=NONE cterm=NONE
    hi javascriptDocParamName guifg=#a89984 guibg=NONE gui=NONE cterm=NONE
    hi javascriptDocTags guifg=#a89984 guibg=NONE gui=NONE cterm=NONE
    hi javascriptDocNotation guifg=#a89984 guibg=NONE gui=NONE cterm=NONE
    hi javascriptDocParamType guifg=#a89984 guibg=NONE gui=NONE cterm=NONE
    hi javascriptDocNamedParamType guifg=#a89984 guibg=NONE gui=NONE cterm=NONE
    hi javascriptBrackets guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi javascriptDOMElemAttrs guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi javascriptDOMEventMethod guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi javascriptDOMNodeMethod guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi javascriptDOMStorageMethod guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi javascriptHeadersMethod guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi javascriptAsyncFuncKeyword guifg=#fb4934 guibg=NONE gui=NONE cterm=NONE
    hi javascriptAwaitFuncKeyword guifg=#fb4934 guibg=NONE gui=NONE cterm=NONE
    hi jsImport guifg=#fb4934 guibg=NONE gui=NONE cterm=NONE
    hi jsExport guifg=#fb4934 guibg=NONE gui=NONE cterm=NONE
    hi jsFrom guifg=#fb4934 guibg=NONE gui=NONE cterm=NONE
    hi jsThis guifg=#d3869b guibg=NONE gui=NONE cterm=NONE
    hi jsParen guifg=#83a598 guibg=NONE gui=NONE cterm=NONE
    hi jsOperator guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi jsSpreadOperator guifg=#b8bb26 guibg=NONE gui=NONE cterm=NONE
    hi jsSpreadExpression guifg=#83a598 guibg=NONE gui=NONE cterm=NONE
    hi jsClassKeyword guifg=#fb4934 guibg=NONE gui=NONE cterm=NONE
    hi jsClassProperty guifg=#b8bb26 guibg=NONE gui=NONE cterm=NONE
    hi jsExtendsKeyword guifg=#fb4934 guibg=NONE gui=NONE cterm=NONE
    hi jsExportDefault guifg=#fe8019 guibg=NONE gui=bold cterm=bold
    hi jsTemplateBraces guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi jsGlobalNodeObjects guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi jsGlobalObjects guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi jsFunction guifg=#b8bb26 guibg=NONE gui=NONE cterm=NONE
    hi jsFuncParens guifg=#d3869b guibg=NONE gui=NONE cterm=NONE
    hi jsFuncBlock guifg=#83a598 guibg=NONE gui=NONE cterm=NONE
    hi jsParens guifg=#bdae93 guibg=NONE gui=NONE cterm=NONE
    hi jsNull guifg=#d3869b guibg=NONE gui=NONE cterm=NONE
    hi jsUndefined guifg=#d3869b guibg=NONE gui=NONE cterm=NONE
    hi jsClassDefinition guifg=#fabd2f guibg=NONE gui=NONE cterm=NONE
    hi jsFunctionKey guifg=#b8bb26 guibg=NONE gui=NONE cterm=NONE
    hi jsBracket guifg=#fb4934 guibg=NONE gui=NONE cterm=NONE
    hi jsObjectColon guifg=#fb4934 guibg=NONE gui=NONE cterm=NONE
    hi jsObjectProp guifg=#83a598 guibg=NONE gui=NONE cterm=NONE
    hi jsFuncBraces guifg=#b8bb26 guibg=NONE gui=NONE cterm=NONE
    hi jsVariableDef guifg=#fabd2f guibg=NONE gui=NONE cterm=NONE
    hi jsObjectValue guifg=#83a598 guibg=NONE gui=NONE cterm=NONE
    hi jsDestructuringBlock guifg=#fabd2f guibg=NONE gui=NONE cterm=NONE
    hi jsParenIfElse guifg=#83a598 guibg=NONE gui=NONE cterm=NONE
    hi jsClassBlock guifg=#83a598 guibg=NONE gui=NONE cterm=NONE
    hi jsFutureKeys guifg=#fe8019 guibg=NONE gui=bold cterm=bold
    hi jsStorageClass guifg=#fe8019 guibg=NONE gui=NONE cterm=NONE
    hi jsModuleKeyword guifg=#83a598 guibg=NONE gui=NONE cterm=NONE
    hi jsObjectShorthandProp guifg=#83a598 guibg=NONE gui=NONE cterm=NONE
    hi jsxRegion guifg=#83a598 guibg=NONE gui=NONE cterm=NONE
    hi jsxTagName guifg=#83a598 guibg=NONE gui=NONE cterm=NONE
    hi jsxComponentName guifg=#fabd2f guibg=NONE gui=NONE cterm=NONE
    hi jsxEscapeJsAttributes guifg=#83a598 guibg=NONE gui=NONE cterm=NONE
    hi jsxEscapeJsContent guifg=#83a598 guibg=NONE gui=NONE cterm=NONE
    hi jsxAttrib guifg=#fabd2f guibg=NONE gui=NONE cterm=NONE
    hi jsxAttributeBraces guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi jsxEqual guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi jsxString guifg=#b8bb26 guibg=NONE gui=NONE cterm=NONE
    hi jsxCloseTag guifg=#83a598 guibg=NONE gui=NONE cterm=NONE
    hi jsxEndTag guifg=#83a598 guibg=NONE gui=NONE cterm=NONE
    hi jsxEndString guifg=#83a598 guibg=NONE gui=NONE cterm=NONE
    hi jsxCloseString guifg=#83a598 guibg=NONE gui=NONE cterm=NONE
    hi jsxIfOperator guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi jsxElseOperator guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi jsxDot guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi jsxNamespace guifg=#83a598 guibg=NONE gui=NONE cterm=NONE
    hi jsxPunct guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi typeScriptReserved guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi typeScriptLabel guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi typeScriptFuncKeyword guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi typeScriptIdentifier guifg=#fe8019 guibg=NONE gui=NONE cterm=NONE
    hi typeScriptBraces guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi typeScriptEndColons guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi typeScriptDOMObjects guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi typeScriptAjaxMethods guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi typeScriptLogicSymbols guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi! link typeScriptDocSeeTag Comment
    hi! link typeScriptDocParam Comment
    hi! link typeScriptDocTags vimCommentTitle
    hi typeScriptGlobalObjects guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi typeScriptParens guifg=#bdae93 guibg=NONE gui=NONE cterm=NONE
    hi typeScriptOpSymbols guifg=#bdae93 guibg=NONE gui=NONE cterm=NONE
    hi typeScriptHtmlElemProperties guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi typeScriptNull guifg=#d3869b guibg=NONE gui=NONE cterm=NONE
    hi typeScriptInterpolationDelimiter guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi purescriptModuleKeyword guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi purescriptModuleName guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi purescriptWhere guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi purescriptDelimiter guifg=#a89984 guibg=NONE gui=NONE cterm=NONE
    hi purescriptType guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi purescriptImportKeyword guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi purescriptHidingKeyword guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi purescriptAsKeyword guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi purescriptStructure guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi purescriptOperator guifg=#83a598 guibg=NONE gui=NONE cterm=NONE
    hi purescriptTypeVar guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi purescriptConstructor guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi purescriptFunction guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi purescriptConditional guifg=#fe8019 guibg=NONE gui=NONE cterm=NONE
    hi purescriptBacktick guifg=#fe8019 guibg=NONE gui=NONE cterm=NONE
    hi coffeeExtendedOp guifg=#bdae93 guibg=NONE gui=NONE cterm=NONE
    hi coffeeSpecialOp guifg=#bdae93 guibg=NONE gui=NONE cterm=NONE
    hi coffeeCurly guifg=#fe8019 guibg=NONE gui=NONE cterm=NONE
    hi coffeeParen guifg=#bdae93 guibg=NONE gui=NONE cterm=NONE
    hi coffeeBracket guifg=#fe8019 guibg=NONE gui=NONE cterm=NONE
    hi rubyStringDelimiter guifg=#b8bb26 guibg=NONE gui=NONE cterm=NONE
    hi rubyInterpolationDelimiter guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi objcTypeModifier guifg=#fb4934 guibg=NONE gui=NONE cterm=NONE
    hi objcDirective guifg=#83a598 guibg=NONE gui=NONE cterm=NONE
    hi goDirective guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi goConstants guifg=#d3869b guibg=NONE gui=NONE cterm=NONE
    hi goDeclaration guifg=#fb4934 guibg=NONE gui=NONE cterm=NONE
    hi goDeclType guifg=#83a598 guibg=NONE gui=NONE cterm=NONE
    hi goBuiltins guifg=#fe8019 guibg=NONE gui=NONE cterm=NONE
    hi luaIn guifg=#fb4934 guibg=NONE gui=NONE cterm=NONE
    hi luaFunction guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi luaTable guifg=#fe8019 guibg=NONE gui=NONE cterm=NONE
    hi moonSpecialOp guifg=#bdae93 guibg=NONE gui=NONE cterm=NONE
    hi moonExtendedOp guifg=#bdae93 guibg=NONE gui=NONE cterm=NONE
    hi moonFunction guifg=#bdae93 guibg=NONE gui=NONE cterm=NONE
    hi moonObject guifg=#fabd2f guibg=NONE gui=NONE cterm=NONE
    hi javaAnnotation guifg=#83a598 guibg=NONE gui=NONE cterm=NONE
    hi javaDocTags guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi! link javaCommentTitle vimCommentTitle
    hi javaParen guifg=#bdae93 guibg=NONE gui=NONE cterm=NONE
    hi javaParen1 guifg=#bdae93 guibg=NONE gui=NONE cterm=NONE
    hi javaParen2 guifg=#bdae93 guibg=NONE gui=NONE cterm=NONE
    hi javaParen3 guifg=#bdae93 guibg=NONE gui=NONE cterm=NONE
    hi javaParen4 guifg=#bdae93 guibg=NONE gui=NONE cterm=NONE
    hi javaParen5 guifg=#bdae93 guibg=NONE gui=NONE cterm=NONE
    hi javaOperator guifg=#fe8019 guibg=NONE gui=NONE cterm=NONE
    hi javaVarArg guifg=#b8bb26 guibg=NONE gui=NONE cterm=NONE
    hi! link elixirDocString Comment
    hi elixirStringDelimiter guifg=#b8bb26 guibg=NONE gui=NONE cterm=NONE
    hi elixirInterpolationDelimiter guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi elixirModuleDeclaration guifg=#fabd2f guibg=NONE gui=NONE cterm=NONE
    hi scalaNameDefinition guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi scalaCaseFollowing guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi scalaCapitalWord guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi scalaTypeExtension guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi scalaKeyword guifg=#fb4934 guibg=NONE gui=NONE cterm=NONE
    hi scalaKeywordModifier guifg=#fb4934 guibg=NONE gui=NONE cterm=NONE
    hi scalaSpecial guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi scalaOperator guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi scalaTypeDeclaration guifg=#fabd2f guibg=NONE gui=NONE cterm=NONE
    hi scalaTypeTypePostDeclaration guifg=#fabd2f guibg=NONE gui=NONE cterm=NONE
    hi scalaInstanceDeclaration guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi scalaInterpolation guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi markdownItalic guifg=#bdae93 guibg=NONE gui=italic cterm=italic
    hi markdownH1 guifg=#b8bb26 guibg=NONE gui=bold cterm=bold
    hi markdownH2 guifg=#b8bb26 guibg=NONE gui=bold cterm=bold
    hi markdownH3 guifg=#fabd2f guibg=NONE gui=bold cterm=bold
    hi markdownH4 guifg=#fabd2f guibg=NONE gui=bold cterm=bold
    hi markdownH5 guifg=#fabd2f guibg=NONE gui=NONE cterm=NONE
    hi markdownH6 guifg=#fabd2f guibg=NONE gui=NONE cterm=NONE
    hi markdownCode guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi markdownCodeBlock guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi markdownCodeDelimiter guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi markdownBlockquote guifg=#928374 guibg=NONE gui=NONE cterm=NONE
    hi markdownListMarker guifg=#928374 guibg=NONE gui=NONE cterm=NONE
    hi markdownOrderedListMarker guifg=#928374 guibg=NONE gui=NONE cterm=NONE
    hi markdownRule guifg=#928374 guibg=NONE gui=NONE cterm=NONE
    hi markdownHeadingRule guifg=#928374 guibg=NONE gui=NONE cterm=NONE
    hi markdownUrlDelimiter guifg=#bdae93 guibg=NONE gui=NONE cterm=NONE
    hi markdownLinkDelimiter guifg=#bdae93 guibg=NONE gui=NONE cterm=NONE
    hi markdownLinkTextDelimiter guifg=#bdae93 guibg=NONE gui=NONE cterm=NONE
    hi markdownHeadingDelimiter guifg=#fe8019 guibg=NONE gui=NONE cterm=NONE
    hi markdownUrl guifg=#d3869b guibg=NONE gui=NONE cterm=NONE
    hi markdownUrlTitleDelimiter guifg=#b8bb26 guibg=NONE gui=NONE cterm=NONE
    hi markdownLinkText guifg=#928374 guibg=NONE gui=underline cterm=underline
    hi! link markdownIdDeclaration markdownLinkText
    hi haskellType guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi haskellIdentifier guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi haskellSeparator guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi haskellDelimiter guifg=#a89984 guibg=NONE gui=NONE cterm=NONE
    hi haskellOperators guifg=#83a598 guibg=NONE gui=NONE cterm=NONE
    hi haskellBacktick guifg=#fe8019 guibg=NONE gui=NONE cterm=NONE
    hi haskellStatement guifg=#fe8019 guibg=NONE gui=NONE cterm=NONE
    hi haskellConditional guifg=#fe8019 guibg=NONE gui=NONE cterm=NONE
    hi haskellLet guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi haskellDefault guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi haskellWhere guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi haskellBottom guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi haskellBlockKeywords guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi haskellImportKeywords guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi haskellDeclKeyword guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi haskellDeriving guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi haskellAssocType guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
    hi haskellNumber guifg=#d3869b guibg=NONE gui=NONE cterm=NONE
    hi haskellPragma guifg=#d3869b guibg=NONE gui=NONE cterm=NONE
    hi haskellString guifg=#b8bb26 guibg=NONE gui=NONE cterm=NONE
    hi haskellChar guifg=#b8bb26 guibg=NONE gui=NONE cterm=NONE
    hi jsonKeyword guifg=#b8bb26 guibg=NONE gui=NONE cterm=NONE
    hi jsonQuote guifg=#b8bb26 guibg=NONE gui=NONE cterm=NONE
    hi jsonBraces guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    hi jsonString guifg=#ebdbb2 guibg=NONE gui=NONE cterm=NONE
    if !s:italics
      hi htmlBoldItalic gui=bold cterm=bold
      hi htmlBoldUnderlineItalic gui=bold,underline cterm=bold,underline
      hi htmlUnderlineItalic gui=underline cterm=underline
      hi htmlItalic gui=NONE cterm=NONE
      hi markdownItalic gui=NONE cterm=NONE
    endif
    if !get(g:, 'gruvbox_bold', 1)
      hi htmlTagName gui=NONE cterm=NONE
      hi htmlSpecialTagName gui=NONE cterm=NONE
      hi htmlBold gui=NONE cterm=NONE
      hi htmlBoldUnderline gui=underline cterm=underline
      hi htmlBoldItalic gui=italic cterm=italic
      hi htmlBoldUnderlineItalic gui=underline,italic cterm=underline,italic
      hi docbkKeyword gui=NONE cterm=NONE
      hi vimCommentTitle gui=NONE cterm=NONE
      hi clojureRegexpCharClass gui=NONE cterm=NONE
      hi pythonDottedName gui=NONE cterm=NONE
      hi jsExportDefault gui=NONE cterm=NONE
      hi jsFutureKeys gui=NONE cterm=NONE
      hi markdownH1 gui=NONE cterm=NONE
      hi markdownH2 gui=NONE cterm=NONE
      hi markdownH3 gui=NONE cterm=NONE
      hi markdownH4 gui=NONE cterm=NONE
    endif
  endif
else
  " Light background
  if (has('termguicolors') && &termguicolors) || has('gui_running')
    let g:terminal_ansi_colors = ['#3c3836', '#cc241d', '#98971a', '#d79921', '#458588', '#b16286', '#689d6a', '#7c6f64', '#928374', '#9d0006', '#79740e', '#b57614', '#076678', '#8f3f71', '#427b58', '#f9f5d7']
  endif
  if has('nvim')
    let g:terminal_color_0 = '#3c3836'
    let g:terminal_color_1 = '#cc241d'
    let g:terminal_color_2 = '#98971a'
    let g:terminal_color_3 = '#d79921'
    let g:terminal_color_4 = '#458588'
    let g:terminal_color_5 = '#b16286'
    let g:terminal_color_6 = '#689d6a'
    let g:terminal_color_7 = '#7c6f64'
    let g:terminal_color_8 = '#928374'
    let g:terminal_color_9 = '#9d0006'
    let g:terminal_color_10 = '#79740e'
    let g:terminal_color_11 = '#b57614'
    let g:terminal_color_12 = '#076678'
    let g:terminal_color_13 = '#8f3f71'
    let g:terminal_color_14 = '#427b58'
    let g:terminal_color_15 = '#f9f5d7'
  endif
  if get(g:, 'gruvbox_transp_bg', 0) && !has('gui_running')
    hi Normal guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi CursorLineNr guifg=#b57614 guibg=NONE gui=NONE cterm=NONE
    hi FoldColumn guifg=#928374 guibg=NONE gui=NONE cterm=NONE
    hi SignColumn guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi VertSplit guifg=#bdae93 guibg=NONE gui=NONE cterm=NONE
  else
    hi Normal guifg=#3c3836 guibg=#f9f5d7 gui=NONE cterm=NONE
    hi CursorLineNr guifg=#b57614 guibg=#ebdbb2 gui=NONE cterm=NONE
    hi FoldColumn guifg=#928374 guibg=#ebdbb2 gui=NONE cterm=NONE
    hi SignColumn guifg=#3c3836 guibg=#ebdbb2 gui=NONE cterm=NONE
    hi VertSplit guifg=#bdae93 guibg=#f9f5d7 gui=NONE cterm=NONE
  endif
  hi ColorColumn guifg=NONE guibg=#ebdbb2 gui=NONE cterm=NONE
  hi Comment guifg=#928374 guibg=NONE gui=italic cterm=italic
  hi CursorLine guifg=NONE guibg=#ebdbb2 gui=NONE cterm=NONE
  hi Error guifg=#9d0006 guibg=#f9f5d7 gui=bold,reverse cterm=bold,reverse
  hi ErrorMsg guifg=#f9f5d7 guibg=#9d0006 gui=bold cterm=bold
  hi Folded guifg=#928374 guibg=#ebdbb2 gui=italic cterm=italic
  hi LineNr guifg=#a89984 guibg=NONE gui=NONE cterm=NONE
  hi MatchParen guifg=NONE guibg=#d5c4a1 gui=bold,underline cterm=bold,underline
  hi NonText guifg=#d5c4a1 guibg=NONE gui=NONE cterm=NONE
  hi Pmenu guifg=#3c3836 guibg=#d5c4a1 gui=NONE cterm=NONE
  hi PmenuSbar guifg=NONE guibg=#d5c4a1 gui=NONE cterm=NONE
  hi PmenuSel guifg=#d5c4a1 guibg=#076678 gui=bold cterm=bold
  hi PmenuThumb guifg=NONE guibg=#a89984 gui=NONE cterm=NONE
  hi SpecialKey guifg=#928374 guibg=NONE gui=NONE cterm=NONE
  hi StatusLine guifg=#d5c4a1 guibg=#3c3836 gui=reverse cterm=reverse
  hi StatusLineNC guifg=#ebdbb2 guibg=#7c6f64 gui=reverse cterm=reverse
  hi TabLine guifg=#a89984 guibg=#ebdbb2 gui=NONE cterm=NONE
  hi TabLineFill guifg=#a89984 guibg=#ebdbb2 gui=NONE cterm=NONE
  hi TabLineSel guifg=#79740e guibg=#ebdbb2 gui=NONE cterm=NONE
  hi ToolbarButton guifg=#282828 guibg=#bdae93 gui=bold cterm=bold
  hi ToolbarLine guifg=NONE guibg=#bdae93 gui=NONE cterm=NONE
  hi Visual guifg=NONE guibg=#bdae93 gui=NONE cterm=NONE
  hi WildMenu guifg=#076678 guibg=#d5c4a1 gui=bold cterm=bold
  hi Conceal guifg=#076678 guibg=NONE gui=NONE cterm=NONE
  hi Cursor guifg=NONE guibg=NONE gui=reverse ctermfg=NONE ctermbg=NONE cterm=reverse
  hi DiffAdd guifg=#79740e guibg=#f9f5d7 gui=reverse cterm=reverse
  hi DiffChange guifg=#427b58 guibg=#f9f5d7 gui=reverse cterm=reverse
  hi DiffDelete guifg=#9d0006 guibg=#f9f5d7 gui=reverse cterm=reverse
  hi DiffText guifg=#b57614 guibg=#f9f5d7 gui=reverse cterm=reverse
  hi Directory guifg=#79740e guibg=NONE gui=bold cterm=bold
  hi EndOfBuffer guifg=#f9f5d7 guibg=NONE gui=NONE cterm=NONE
  hi IncSearch guifg=#af3a03 guibg=#f9f5d7 gui=reverse cterm=reverse
  hi ModeMsg guifg=#b57614 guibg=NONE gui=bold cterm=bold
  hi MoreMsg guifg=#b57614 guibg=NONE gui=bold cterm=bold
  hi Question guifg=#af3a03 guibg=NONE gui=bold cterm=bold
  hi Search guifg=#b57614 guibg=#f9f5d7 gui=reverse cterm=reverse
  hi SpellBad guifg=#9d0006 guibg=NONE guisp=#9d0006 gui=italic,undercurl cterm=italic,underline
  hi SpellCap guifg=#076678 guibg=NONE guisp=#076678 gui=italic,undercurl cterm=italic,underline
  hi SpellLocal guifg=#427b58 guibg=NONE guisp=#427b58 gui=italic,undercurl cterm=italic,underline
  hi SpellRare guifg=#8f3f71 guibg=NONE guisp=#8f3f71 gui=italic,undercurl cterm=italic,underline
  hi Title guifg=#79740e guibg=NONE gui=bold cterm=bold
  hi WarningMsg guifg=#9d0006 guibg=NONE gui=bold cterm=bold
  hi Boolean guifg=#8f3f71 guibg=NONE gui=NONE cterm=NONE
  hi Character guifg=#8f3f71 guibg=NONE gui=NONE cterm=NONE
  hi Conditional guifg=#9d0006 guibg=NONE gui=NONE cterm=NONE
  hi Constant guifg=#8f3f71 guibg=NONE gui=NONE cterm=NONE
  hi Define guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
  hi Debug guifg=#9d0006 guibg=NONE gui=NONE cterm=NONE
  hi Delimiter guifg=#af3a03 guibg=NONE gui=NONE cterm=NONE
  hi Error guifg=#9d0006 guibg=#f9f5d7 gui=bold,reverse cterm=bold,reverse
  hi Exception guifg=#9d0006 guibg=NONE gui=NONE cterm=NONE
  hi Float guifg=#8f3f71 guibg=NONE gui=NONE cterm=NONE
  hi Function guifg=#79740e guibg=NONE gui=bold cterm=bold
  hi Identifier guifg=#076678 guibg=NONE gui=NONE cterm=NONE
  hi Ignore guifg=fg guibg=NONE gui=NONE cterm=NONE
  hi Include guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
  hi Keyword guifg=#9d0006 guibg=NONE gui=NONE cterm=NONE
  hi Label guifg=#9d0006 guibg=NONE gui=NONE cterm=NONE
  hi Macro guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
  hi Number guifg=#8f3f71 guibg=NONE gui=NONE cterm=NONE
  hi Operator guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
  hi PreCondit guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
  hi PreProc guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
  hi Repeat guifg=#9d0006 guibg=NONE gui=NONE cterm=NONE
  hi SpecialChar guifg=#9d0006 guibg=NONE gui=NONE cterm=NONE
  hi SpecialComment guifg=#9d0006 guibg=NONE gui=NONE cterm=NONE
  hi Statement guifg=#9d0006 guibg=NONE gui=NONE cterm=NONE
  hi StorageClass guifg=#af3a03 guibg=NONE gui=NONE cterm=NONE
  hi Special guifg=#af3a03 guibg=NONE gui=italic cterm=italic
  hi String guifg=#79740e guibg=NONE gui=italic cterm=italic
  hi Structure guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
  hi Todo guifg=fg guibg=#f9f5d7 gui=bold,italic cterm=bold,italic
  hi Type guifg=#b57614 guibg=NONE gui=NONE cterm=NONE
  hi Typedef guifg=#b57614 guibg=NONE gui=NONE cterm=NONE
  hi Underlined guifg=#076678 guibg=NONE guisp=#076678 gui=underline cterm=underline
  hi CursorIM guifg=NONE guibg=NONE gui=reverse ctermfg=NONE ctermbg=NONE cterm=reverse
  if !s:italics
    hi Comment gui=NONE cterm=NONE
    hi Folded gui=NONE cterm=NONE
    hi SpellBad gui=undercurl cterm=underline
    hi SpellCap gui=undercurl cterm=underline
    hi SpellLocal gui=undercurl cterm=underline
    hi SpellRare gui=undercurl cterm=underline
    hi Special gui=NONE cterm=NONE
    hi String gui=NONE cterm=NONE
    hi Todo gui=bold cterm=bold
  endif
  if !get(g:, 'gruvbox_italicize_strings', 1)
    hi Special gui=NONE cterm=NONE
    hi String gui=NONE cterm=NONE
  endif
  if !get(g:, 'gruvbox_bold', 1)
    hi Directory gui=NONE cterm=NONE
    hi Error gui=reverse cterm=reverse
    hi ErrorMsg gui=NONE cterm=NONE
    hi Function gui=NONE cterm=NONE
    hi MatchParen gui=underline cterm=underline
    hi ModeMsg gui=NONE cterm=NONE
    hi MoreMsg gui=NONE cterm=NONE
    hi PmenuSel gui=NONE cterm=NONE
    hi Question gui=NONE cterm=NONE
    hi Title gui=NONE cterm=NONE
    hi Todo gui=italic cterm=italic
    hi ToolbarButton gui=NONE cterm=NONE
    hi WarningMsg gui=NONE cterm=NONE
    hi WildMenu gui=NONE cterm=NONE
  endif
  hi NormalMode guifg=#7c6f64 guibg=#f9f5d7 gui=reverse cterm=reverse
  hi InsertMode guifg=#076678 guibg=#f9f5d7 gui=reverse cterm=reverse
  hi ReplaceMode guifg=#427b58 guibg=#f9f5d7 gui=reverse cterm=reverse
  hi VisualMode guifg=#af3a03 guibg=#f9f5d7 gui=reverse cterm=reverse
  hi CommandMode guifg=#8f3f71 guibg=#f9f5d7 gui=reverse cterm=reverse
  hi Warnings guifg=#af3a03 guibg=#f9f5d7 gui=reverse cterm=reverse
  if has('nvim')
    hi! link TermCursor Cursor
    hi TermCursorNC guifg=#ebdbb2 guibg=#3c3836 gui=NONE cterm=NONE
  endif
  if get(g:, "gruvbox_plugin_hi_groups", 1)
    hi ALEError guifg=NONE guibg=NONE guisp=#9d0006 gui=undercurl ctermfg=NONE ctermbg=NONE cterm=underline
    hi ALEWarning guifg=NONE guibg=NONE guisp=#9d0006 gui=undercurl ctermfg=NONE ctermbg=NONE cterm=underline
    hi ALEInfo guifg=NONE guibg=NONE guisp=#076678 gui=undercurl ctermfg=NONE ctermbg=NONE cterm=underline
    hi ALEErrorSign guifg=#9d0006 guibg=#ebdbb2 gui=NONE cterm=NONE
    hi ALEWarningSign guifg=#b57614 guibg=#ebdbb2 gui=NONE cterm=NONE
    hi ALEInfoSign guifg=#076678 guibg=#ebdbb2 gui=NONE cterm=NONE
    hi BufTabLineCurrent guifg=#f9f5d7 guibg=#7c6f64 gui=NONE cterm=NONE
    hi BufTabLineActive guifg=#7c6f64 guibg=#d5c4a1 gui=NONE cterm=NONE
    hi BufTabLineHidden guifg=#a89984 guibg=#ebdbb2 gui=NONE cterm=NONE
    hi BufTabLineFill guifg=#f9f5d7 guibg=#f9f5d7 gui=NONE cterm=NONE
    hi CocErrorSign guifg=#9d0006 guibg=#ebdbb2 gui=NONE cterm=NONE
    hi CocWarningSign guifg=#af3a03 guibg=#ebdbb2 gui=NONE cterm=NONE
    hi CocInfoSign guifg=#b57614 guibg=#ebdbb2 gui=NONE cterm=NONE
    hi CocHintSign guifg=#076678 guibg=#ebdbb2 gui=NONE cterm=NONE
    hi CocErrorFloat guifg=#9d0006 guibg=NONE gui=NONE cterm=NONE
    hi CocWarningFloat guifg=#af3a03 guibg=NONE gui=NONE cterm=NONE
    hi CocInfoFloat guifg=#b57614 guibg=NONE gui=NONE cterm=NONE
    hi CocHintFloat guifg=#076678 guibg=NONE gui=NONE cterm=NONE
    hi CtrlPMatch guifg=#b57614 guibg=NONE gui=NONE cterm=NONE
    hi CtrlPNoEntries guifg=#9d0006 guibg=NONE gui=NONE cterm=NONE
    hi CtrlPPrtBase guifg=#d5c4a1 guibg=NONE gui=NONE cterm=NONE
    hi CtrlPPrtCursor guifg=#076678 guibg=NONE gui=NONE cterm=NONE
    hi CtrlPLinePre guifg=#d5c4a1 guibg=NONE gui=NONE cterm=NONE
    hi CtrlPMode1 guifg=#076678 guibg=#d5c4a1 gui=bold cterm=bold
    hi CtrlPMode2 guifg=#f9f5d7 guibg=#076678 gui=bold cterm=bold
    hi CtrlPStats guifg=#7c6f64 guibg=#d5c4a1 gui=bold cterm=bold
    if !get(g:, 'gruvbox_bold', 1)
      hi CtrlPMode1 gui=NONE cterm=NONE
      hi CtrlPMode2 gui=NONE cterm=NONE
      hi CtrlPStats gui=NONE cterm=NONE
    endif
    hi DirvishPathTail guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi DirvishArg guifg=#b57614 guibg=NONE gui=NONE cterm=NONE
    hi! link EasyMotionTarget Search
    hi! link EasyMotionShade Comment
    hi gitcommitSelectedFile guifg=#79740e guibg=NONE gui=NONE cterm=NONE
    hi gitcommitDiscardedFile guifg=#9d0006 guibg=NONE gui=NONE cterm=NONE
    if get(g:, 'gruvbox_transp_bg', 0)
      hi GitGutterAdd guifg=#79740e guibg=NONE gui=NONE cterm=NONE
      hi GitGutterChange guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
      hi GitGutterDelete guifg=#9d0006 guibg=NONE gui=NONE cterm=NONE
      hi GitGutterChangeDelete guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    else
      hi GitGutterAdd guifg=#79740e guibg=#ebdbb2 gui=NONE cterm=NONE
      hi GitGutterChange guifg=#427b58 guibg=#ebdbb2 gui=NONE cterm=NONE
      hi GitGutterDelete guifg=#9d0006 guibg=#ebdbb2 gui=NONE cterm=NONE
      hi GitGutterChangeDelete guifg=#427b58 guibg=#ebdbb2 gui=NONE cterm=NONE
    endif
    if get(g:, 'indent_guides_auto_colors', 0)
      if get(g:, 'gruvbox_invert_indent_guides', 0)
        hi IndentGuidesOdd guifg=#f9f5d7 guibg=#d5c4a1 gui=reverse cterm=reverse
        hi IndentGuidesEven guifg=#f9f5d7 guibg=#ebdbb2 gui=reverse cterm=reverse
      else
        hi IndentGuidesOdd guifg=#f9f5d7 guibg=#d5c4a1 gui=NONE cterm=NONE
        hi IndentGuidesEven guifg=#f9f5d7 guibg=#ebdbb2 gui=NONE cterm=NONE
      endif
    endif
    if !exists('g:indentLine_color_term')
      let g:indentLine_color_term = 187
    endif
    if !exists('g:indentLine_color_gui')
      let g:indentLine_color_gui = '#d5c4a1'
    endif
    hi LspDiagnosticsDefaultError guifg=#9d0006 guibg=NONE gui=NONE cterm=NONE
    hi LspDiagnosticsSignError guifg=#9d0006 guibg=#ebdbb2 gui=NONE cterm=NONE
    hi LspDiagnosticsUnderlineError guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
    hi LspDiagnosticsDefaultWarning guifg=#af3a03 guibg=NONE gui=NONE cterm=NONE
    hi LspDiagnosticsSignWarning guifg=#af3a03 guibg=#ebdbb2 gui=NONE cterm=NONE
    hi LspDiagnosticsUnderlineWarning guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
    hi LspDiagnosticsDefaultInformation guifg=#b57614 guibg=NONE gui=NONE cterm=NONE
    hi LspDiagnosticsSignInformation guifg=#b57614 guibg=#ebdbb2 gui=NONE cterm=NONE
    hi LspDiagnosticsUnderlineInformation guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
    hi LspDiagnosticsDefaultHint guifg=#076678 guibg=NONE gui=NONE cterm=NONE
    hi LspDiagnosticsSignHint guifg=#076678 guibg=#ebdbb2 gui=NONE cterm=NONE
    hi LspDiagnosticsUnderlineHint guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
    hi LanguageClientError guifg=#9d0006 guibg=NONE gui=NONE cterm=NONE
    hi LanguageClientErrorSign guifg=#9d0006 guibg=#f9f5d7 gui=NONE cterm=NONE
    hi LanguageClientWarning guifg=#b57614 guibg=NONE gui=NONE cterm=NONE
    hi LanguageClientWarningSign guifg=#b57614 guibg=#ebdbb2 gui=NONE cterm=NONE
    hi LangaugeClientInfo guifg=#076678 guibg=NONE gui=NONE cterm=NONE
    hi LanguageClientInfoSign guifg=#076678 guibg=#ebdbb2 gui=NONE cterm=NONE
    hi LanguageClientCodeLens guifg=#076678 guibg=NONE gui=NONE cterm=NONE
    hi NERDTreeDir guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi NERDTreeDirSlash guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi NERDTreeOpenable guifg=#af3a03 guibg=NONE gui=NONE cterm=NONE
    hi NERDTreeClosable guifg=#af3a03 guibg=NONE gui=NONE cterm=NONE
    hi NERDTreeFile guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi NERDTreeExecFile guifg=#b57614 guibg=NONE gui=NONE cterm=NONE
    hi NERDTreeUp guifg=#928374 guibg=NONE gui=NONE cterm=NONE
    hi NERDTreeCWD guifg=#79740e guibg=NONE gui=NONE cterm=NONE
    hi NERDTreeHelp guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi NERDTreeToggleOn guifg=#79740e guibg=NONE gui=NONE cterm=NONE
    hi NERDTreeToggleOff guifg=#9d0006 guibg=NONE gui=NONE cterm=NONE
    hi netrwDir guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi netrwClassify guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi netrwLink guifg=#928374 guibg=NONE gui=NONE cterm=NONE
    hi netrwSymLink guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi netrwExe guifg=#b57614 guibg=NONE gui=NONE cterm=NONE
    hi netrwComment guifg=#928374 guibg=NONE gui=NONE cterm=NONE
    hi netrwList guifg=#076678 guibg=NONE gui=NONE cterm=NONE
    hi netrwHelpCmd guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi netrwCmdSep guifg=#665c54 guibg=NONE gui=NONE cterm=NONE
    hi netrwVersion guifg=#79740e guibg=NONE gui=NONE cterm=NONE
    " Rainbow Parentheses
    if !exists('g:rbpt_colorpairs')
      let g:rbpt_colorpairs = [['blue', '#458588'], ['magenta', '#b16286'],
            \ ['red', '#cc241d'], ['166', '#d65d0e']]
    endif

    let g:rainbow_guifgs = [ '#d65d0e', '#cc241d', '#b16286', '#458588' ]
    let g:rainbow_ctermfgs = [ '166', 'red', 'magenta', 'blue' ]

    if !exists('g:rainbow_conf')
      let g:rainbow_conf = {}
    endif
    if !has_key(g:rainbow_conf, 'guifgs')
      let g:rainbow_conf['guifgs'] = g:rainbow_guifgs
    endif
    if !has_key(g:rainbow_conf, 'ctermfgs')
      let g:rainbow_conf['ctermfgs'] = g:rainbow_ctermfgs
    endif

    let g:niji_dark_colours = g:rbpt_colorpairs
    let g:niji_light_colours = g:rbpt_colorpairs
    hi ShowMarksHLl guifg=#076678 guibg=#ebdbb2 gui=NONE cterm=NONE
    hi ShowMarksHLu guifg=#076678 guibg=#ebdbb2 gui=NONE cterm=NONE
    hi ShowMarksHLo guifg=#076678 guibg=#ebdbb2 gui=NONE cterm=NONE
    hi ShowMarksHLm guifg=#076678 guibg=#ebdbb2 gui=NONE cterm=NONE
    hi SignifySignAdd guifg=#79740e guibg=#ebdbb2 gui=NONE cterm=NONE
    hi SignifySignChange guifg=#427b58 guibg=#ebdbb2 gui=NONE cterm=NONE
    hi SignifySignDelete guifg=#9d0006 guibg=#ebdbb2 gui=NONE cterm=NONE
    hi SignatureMarkText guifg=#076678 guibg=#ebdbb2 gui=NONE cterm=NONE
    hi SignatureMarkerText guifg=#8f3f71 guibg=#ebdbb2 gui=NONE cterm=NONE
    hi StartifyBracket guifg=#665c54 guibg=NONE gui=NONE cterm=NONE
    hi StartifyFile guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi StartifyNumber guifg=#076678 guibg=NONE gui=NONE cterm=NONE
    hi StartifyPath guifg=#928374 guibg=NONE gui=NONE cterm=NONE
    hi StartifySlash guifg=#928374 guibg=NONE gui=NONE cterm=NONE
    hi StartifySection guifg=#b57614 guibg=NONE gui=NONE cterm=NONE
    hi StartifySpecial guifg=#d5c4a1 guibg=NONE gui=NONE cterm=NONE
    hi StartifyHeader guifg=#af3a03 guibg=NONE gui=NONE cterm=NONE
    hi StartifyFooter guifg=#d5c4a1 guibg=NONE gui=NONE cterm=NONE
    hi SyntasticError guifg=NONE guibg=NONE guisp=#9d0006 gui=undercurl ctermfg=NONE ctermbg=NONE cterm=underline
    hi SyntasticWarning guifg=NONE guibg=NONE guisp=#b57614 gui=undercurl ctermfg=NONE ctermbg=NONE cterm=underline
    hi SyntasticErrorSign guifg=#9d0006 guibg=#ebdbb2 gui=NONE cterm=NONE
    hi SyntasticWarningSign guifg=#b57614 guibg=#ebdbb2 gui=NONE cterm=NONE
    hi multiple_cursors_cursor guifg=NONE guibg=NONE gui=reverse ctermfg=NONE ctermbg=NONE cterm=reverse
    hi multiple_cursors_visual guifg=NONE guibg=#d5c4a1 gui=NONE cterm=NONE
    let g:vimshell_escape_colors = [
          \ '#a89984', '#9d0006', '#79740e', '#b57614',
          \ '#076678', '#8f3f71', '#427b58', '#7c6f64',
          \ '#f9f5d7', '#9d0006', '#79740e', '#af3a03',
          \ '#076678', '#8f3f71', '#427b58', '#282828'
          \ ]
  endif
  if get(g:, "gruvbox_filetype_hi_groups", 1)
    hi diffAdded guifg=#79740e guibg=NONE gui=NONE cterm=NONE
    hi diffRemoved guifg=#9d0006 guibg=NONE gui=NONE cterm=NONE
    hi diffChanged guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi diffFile guifg=#af3a03 guibg=NONE gui=NONE cterm=NONE
    hi diffNewFile guifg=#b57614 guibg=NONE gui=NONE cterm=NONE
    hi diffLine guifg=#076678 guibg=NONE gui=NONE cterm=NONE
    hi htmlTag guifg=#076678 guibg=NONE gui=NONE cterm=NONE
    hi htmlEndTag guifg=#076678 guibg=NONE gui=NONE cterm=NONE
    hi htmlTagName guifg=#427b58 guibg=NONE gui=bold cterm=bold
    hi htmlArg guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi htmlScriptTag guifg=#8f3f71 guibg=NONE gui=NONE cterm=NONE
    hi htmlTagN guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi htmlSpecialTagName guifg=#427b58 guibg=NONE gui=bold cterm=bold
    hi htmlLink guifg=#7c6f64 guibg=NONE gui=underline cterm=underline
    hi htmlSpecialChar guifg=#af3a03 guibg=NONE gui=NONE cterm=NONE
    hi htmlBold guifg=fg guibg=#f9f5d7 gui=bold cterm=bold
    hi htmlBoldUnderline guifg=fg guibg=#f9f5d7 gui=bold,underline cterm=bold,underline
    hi htmlBoldItalic guifg=fg guibg=#f9f5d7 gui=bold,italic cterm=bold,italic
    hi htmlBoldUnderlineItalic guifg=fg guibg=#f9f5d7 gui=bold,italic,underline cterm=bold,italic,underline
    hi htmlUnderline guifg=fg guibg=#f9f5d7 gui=underline cterm=underline
    hi htmlUnderlineItalic guifg=fg guibg=#f9f5d7 gui=italic,underline cterm=italic,underline
    hi htmlItalic guifg=fg guibg=#f9f5d7 gui=italic cterm=italic
    hi xmlTag guifg=#076678 guibg=NONE gui=NONE cterm=NONE
    hi xmlEndTag guifg=#076678 guibg=NONE gui=NONE cterm=NONE
    hi xmlTagName guifg=#076678 guibg=NONE gui=NONE cterm=NONE
    hi xmlEqual guifg=#076678 guibg=NONE gui=NONE cterm=NONE
    hi docbkKeyword guifg=#427b58 guibg=NONE gui=bold cterm=bold
    hi xmlDocTypeDecl guifg=#928374 guibg=NONE gui=NONE cterm=NONE
    hi xmlDocTypeKeyword guifg=#8f3f71 guibg=NONE gui=NONE cterm=NONE
    hi xmlCdataStart guifg=#928374 guibg=NONE gui=NONE cterm=NONE
    hi xmlCdataCdata guifg=#8f3f71 guibg=NONE gui=NONE cterm=NONE
    hi dtdFunction guifg=#928374 guibg=NONE gui=NONE cterm=NONE
    hi dtdTagName guifg=#8f3f71 guibg=NONE gui=NONE cterm=NONE
    hi xmlAttrib guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi xmlProcessingDelim guifg=#928374 guibg=NONE gui=NONE cterm=NONE
    hi dtdParamEntityPunct guifg=#928374 guibg=NONE gui=NONE cterm=NONE
    hi dtdParamEntityDPunct guifg=#928374 guibg=NONE gui=NONE cterm=NONE
    hi xmlAttribPunct guifg=#928374 guibg=NONE gui=NONE cterm=NONE
    hi xmlEntity guifg=#af3a03 guibg=NONE gui=NONE cterm=NONE
    hi xmlEntityPunct guifg=#af3a03 guibg=NONE gui=NONE cterm=NONE
    hi vimCommentTitle guifg=#7c6f64 guibg=NONE gui=bold cterm=bold
    hi vimNotation guifg=#af3a03 guibg=NONE gui=NONE cterm=NONE
    hi vimBracket guifg=#af3a03 guibg=NONE gui=NONE cterm=NONE
    hi vimMapModKey guifg=#af3a03 guibg=NONE gui=NONE cterm=NONE
    hi vimFuncSID guifg=#665c54 guibg=NONE gui=NONE cterm=NONE
    hi vimSetSep guifg=#665c54 guibg=NONE gui=NONE cterm=NONE
    hi vimSep guifg=#665c54 guibg=NONE gui=NONE cterm=NONE
    hi vimContinue guifg=#665c54 guibg=NONE gui=NONE cterm=NONE
    hi clojureKeyword guifg=#076678 guibg=NONE gui=NONE cterm=NONE
    hi clojureCond guifg=#af3a03 guibg=NONE gui=NONE cterm=NONE
    hi clojureSpecial guifg=#af3a03 guibg=NONE gui=NONE cterm=NONE
    hi clojureDefine guifg=#af3a03 guibg=NONE gui=NONE cterm=NONE
    hi clojureFunc guifg=#b57614 guibg=NONE gui=NONE cterm=NONE
    hi clojureRepeat guifg=#b57614 guibg=NONE gui=NONE cterm=NONE
    hi clojureCharacter guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi clojureStringEscape guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi clojureException guifg=#9d0006 guibg=NONE gui=NONE cterm=NONE
    hi clojureRegexp guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi clojureRegexpEscape guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi clojureRegexpCharClass guifg=#665c54 guibg=NONE gui=bold cterm=bold
    hi! link clojureRegexpMod clojureRegexpCharClass
    hi! link clojureRegexpQuantifier clojureRegexpCharClass
    hi clojureParen guifg=#665c54 guibg=NONE gui=NONE cterm=NONE
    hi clojureAnonArg guifg=#b57614 guibg=NONE gui=NONE cterm=NONE
    hi clojureVariable guifg=#076678 guibg=NONE gui=NONE cterm=NONE
    hi clojureMacro guifg=#af3a03 guibg=NONE gui=NONE cterm=NONE
    hi clojureMeta guifg=#b57614 guibg=NONE gui=NONE cterm=NONE
    hi clojureDeref guifg=#b57614 guibg=NONE gui=NONE cterm=NONE
    hi clojureQuote guifg=#b57614 guibg=NONE gui=NONE cterm=NONE
    hi clojureUnquote guifg=#b57614 guibg=NONE gui=NONE cterm=NONE
    hi cOperator guifg=#8f3f71 guibg=NONE gui=NONE cterm=NONE
    hi cStructure guifg=#af3a03 guibg=NONE gui=NONE cterm=NONE
    hi pythonBuiltin guifg=#af3a03 guibg=NONE gui=NONE cterm=NONE
    hi pythonBuiltinObj guifg=#af3a03 guibg=NONE gui=NONE cterm=NONE
    hi pythonBuiltinFunc guifg=#af3a03 guibg=NONE gui=NONE cterm=NONE
    hi pythonFunction guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi pythonDecorator guifg=#9d0006 guibg=NONE gui=NONE cterm=NONE
    hi pythonInclude guifg=#076678 guibg=NONE gui=NONE cterm=NONE
    hi pythonImport guifg=#076678 guibg=NONE gui=NONE cterm=NONE
    hi pythonRun guifg=#076678 guibg=NONE gui=NONE cterm=NONE
    hi pythonCoding guifg=#076678 guibg=NONE gui=NONE cterm=NONE
    hi pythonOperator guifg=#9d0006 guibg=NONE gui=NONE cterm=NONE
    hi pythonException guifg=#9d0006 guibg=NONE gui=NONE cterm=NONE
    hi pythonExceptions guifg=#8f3f71 guibg=NONE gui=NONE cterm=NONE
    hi pythonBoolean guifg=#8f3f71 guibg=NONE gui=NONE cterm=NONE
    hi pythonDot guifg=#665c54 guibg=NONE gui=NONE cterm=NONE
    hi pythonConditional guifg=#9d0006 guibg=NONE gui=NONE cterm=NONE
    hi pythonRepeat guifg=#9d0006 guibg=NONE gui=NONE cterm=NONE
    hi pythonDottedName guifg=#79740e guibg=NONE gui=bold cterm=bold
    hi cssBraces guifg=#076678 guibg=NONE gui=NONE cterm=NONE
    hi cssFunctionName guifg=#b57614 guibg=NONE gui=NONE cterm=NONE
    hi cssIdentifier guifg=#af3a03 guibg=NONE gui=NONE cterm=NONE
    hi cssClassName guifg=#79740e guibg=NONE gui=NONE cterm=NONE
    hi cssColor guifg=#076678 guibg=NONE gui=NONE cterm=NONE
    hi cssSelectorOp guifg=#076678 guibg=NONE gui=NONE cterm=NONE
    hi cssSelectorOp2 guifg=#076678 guibg=NONE gui=NONE cterm=NONE
    hi cssImportant guifg=#79740e guibg=NONE gui=NONE cterm=NONE
    hi cssVendor guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi cssTextProp guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi cssAnimationProp guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi cssUIProp guifg=#b57614 guibg=NONE gui=NONE cterm=NONE
    hi cssTransformProp guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi cssTransitionProp guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi cssPrintProp guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi cssPositioningProp guifg=#b57614 guibg=NONE gui=NONE cterm=NONE
    hi cssBoxProp guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi cssFontDescriptorProp guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi cssFlexibleBoxProp guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi cssBorderOutlineProp guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi cssBackgroundProp guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi cssMarginProp guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi cssListProp guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi cssTableProp guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi cssFontProp guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi cssPaddingProp guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi cssDimensionProp guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi cssRenderProp guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi cssColorProp guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi cssGeneratedContentProp guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi javaScriptBraces guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi javaScriptFunction guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi javaScriptIdentifier guifg=#9d0006 guibg=NONE gui=NONE cterm=NONE
    hi javaScriptMember guifg=#076678 guibg=NONE gui=NONE cterm=NONE
    hi javaScriptNumber guifg=#8f3f71 guibg=NONE gui=NONE cterm=NONE
    hi javaScriptNull guifg=#8f3f71 guibg=NONE gui=NONE cterm=NONE
    hi javaScriptParens guifg=#665c54 guibg=NONE gui=NONE cterm=NONE
    hi javascriptImport guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi javascriptExport guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi javascriptClassKeyword guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi javascriptClassExtends guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi javascriptDefault guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi javascriptClassName guifg=#b57614 guibg=NONE gui=NONE cterm=NONE
    hi javascriptClassSuperName guifg=#b57614 guibg=NONE gui=NONE cterm=NONE
    hi javascriptGlobal guifg=#b57614 guibg=NONE gui=NONE cterm=NONE
    hi javascriptEndColons guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi javascriptFuncArg guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi javascriptGlobalMethod guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi javascriptNodeGlobal guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi javascriptBOMWindowProp guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi javascriptArrayMethod guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi javascriptArrayStaticMethod guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi javascriptCacheMethod guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi javascriptDateMethod guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi javascriptMathStaticMethod guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi javascriptURLUtilsProp guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi javascriptBOMNavigatorProp guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi javascriptDOMDocMethod guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi javascriptDOMDocProp guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi javascriptBOMLocationMethod guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi javascriptBOMWindowMethod guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi javascriptStringMethod guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi javascriptVariable guifg=#af3a03 guibg=NONE gui=NONE cterm=NONE
    hi javascriptIdentifier guifg=#af3a03 guibg=NONE gui=NONE cterm=NONE
    hi javascriptClassSuper guifg=#af3a03 guibg=NONE gui=NONE cterm=NONE
    hi javascriptFuncKeyword guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi javascriptAsyncFunc guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi javascriptClassStatic guifg=#af3a03 guibg=NONE gui=NONE cterm=NONE
    hi javascriptOperator guifg=#9d0006 guibg=NONE gui=NONE cterm=NONE
    hi javascriptForOperator guifg=#9d0006 guibg=NONE gui=NONE cterm=NONE
    hi javascriptYield guifg=#9d0006 guibg=NONE gui=NONE cterm=NONE
    hi javascriptExceptions guifg=#9d0006 guibg=NONE gui=NONE cterm=NONE
    hi javascriptMessage guifg=#9d0006 guibg=NONE gui=NONE cterm=NONE
    hi javascriptTemplateSB guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi javascriptTemplateSubstitution guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi javascriptLabel guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi javascriptObjectLabel guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi javascriptPropertyName guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi javascriptLogicSymbols guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi javascriptArrowFunc guifg=#b57614 guibg=NONE gui=NONE cterm=NONE
    hi javascriptDocParamName guifg=#7c6f64 guibg=NONE gui=NONE cterm=NONE
    hi javascriptDocTags guifg=#7c6f64 guibg=NONE gui=NONE cterm=NONE
    hi javascriptDocNotation guifg=#7c6f64 guibg=NONE gui=NONE cterm=NONE
    hi javascriptDocParamType guifg=#7c6f64 guibg=NONE gui=NONE cterm=NONE
    hi javascriptDocNamedParamType guifg=#7c6f64 guibg=NONE gui=NONE cterm=NONE
    hi javascriptBrackets guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi javascriptDOMElemAttrs guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi javascriptDOMEventMethod guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi javascriptDOMNodeMethod guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi javascriptDOMStorageMethod guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi javascriptHeadersMethod guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi javascriptAsyncFuncKeyword guifg=#9d0006 guibg=NONE gui=NONE cterm=NONE
    hi javascriptAwaitFuncKeyword guifg=#9d0006 guibg=NONE gui=NONE cterm=NONE
    hi jsImport guifg=#9d0006 guibg=NONE gui=NONE cterm=NONE
    hi jsExport guifg=#9d0006 guibg=NONE gui=NONE cterm=NONE
    hi jsFrom guifg=#9d0006 guibg=NONE gui=NONE cterm=NONE
    hi jsThis guifg=#8f3f71 guibg=NONE gui=NONE cterm=NONE
    hi jsParen guifg=#076678 guibg=NONE gui=NONE cterm=NONE
    hi jsOperator guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi jsSpreadOperator guifg=#79740e guibg=NONE gui=NONE cterm=NONE
    hi jsSpreadExpression guifg=#076678 guibg=NONE gui=NONE cterm=NONE
    hi jsClassKeyword guifg=#9d0006 guibg=NONE gui=NONE cterm=NONE
    hi jsClassProperty guifg=#79740e guibg=NONE gui=NONE cterm=NONE
    hi jsExtendsKeyword guifg=#9d0006 guibg=NONE gui=NONE cterm=NONE
    hi jsExportDefault guifg=#af3a03 guibg=NONE gui=bold cterm=bold
    hi jsTemplateBraces guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi jsGlobalNodeObjects guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi jsGlobalObjects guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi jsFunction guifg=#79740e guibg=NONE gui=NONE cterm=NONE
    hi jsFuncParens guifg=#8f3f71 guibg=NONE gui=NONE cterm=NONE
    hi jsFuncBlock guifg=#076678 guibg=NONE gui=NONE cterm=NONE
    hi jsParens guifg=#665c54 guibg=NONE gui=NONE cterm=NONE
    hi jsNull guifg=#8f3f71 guibg=NONE gui=NONE cterm=NONE
    hi jsUndefined guifg=#8f3f71 guibg=NONE gui=NONE cterm=NONE
    hi jsClassDefinition guifg=#b57614 guibg=NONE gui=NONE cterm=NONE
    hi jsFunctionKey guifg=#79740e guibg=NONE gui=NONE cterm=NONE
    hi jsBracket guifg=#9d0006 guibg=NONE gui=NONE cterm=NONE
    hi jsObjectColon guifg=#9d0006 guibg=NONE gui=NONE cterm=NONE
    hi jsObjectProp guifg=#076678 guibg=NONE gui=NONE cterm=NONE
    hi jsFuncBraces guifg=#79740e guibg=NONE gui=NONE cterm=NONE
    hi jsVariableDef guifg=#b57614 guibg=NONE gui=NONE cterm=NONE
    hi jsObjectValue guifg=#076678 guibg=NONE gui=NONE cterm=NONE
    hi jsDestructuringBlock guifg=#b57614 guibg=NONE gui=NONE cterm=NONE
    hi jsParenIfElse guifg=#076678 guibg=NONE gui=NONE cterm=NONE
    hi jsClassBlock guifg=#076678 guibg=NONE gui=NONE cterm=NONE
    hi jsFutureKeys guifg=#af3a03 guibg=NONE gui=bold cterm=bold
    hi jsStorageClass guifg=#af3a03 guibg=NONE gui=NONE cterm=NONE
    hi jsModuleKeyword guifg=#076678 guibg=NONE gui=NONE cterm=NONE
    hi jsObjectShorthandProp guifg=#076678 guibg=NONE gui=NONE cterm=NONE
    hi jsxRegion guifg=#076678 guibg=NONE gui=NONE cterm=NONE
    hi jsxTagName guifg=#076678 guibg=NONE gui=NONE cterm=NONE
    hi jsxComponentName guifg=#b57614 guibg=NONE gui=NONE cterm=NONE
    hi jsxEscapeJsAttributes guifg=#076678 guibg=NONE gui=NONE cterm=NONE
    hi jsxEscapeJsContent guifg=#076678 guibg=NONE gui=NONE cterm=NONE
    hi jsxAttrib guifg=#b57614 guibg=NONE gui=NONE cterm=NONE
    hi jsxAttributeBraces guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi jsxEqual guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi jsxString guifg=#79740e guibg=NONE gui=NONE cterm=NONE
    hi jsxCloseTag guifg=#076678 guibg=NONE gui=NONE cterm=NONE
    hi jsxEndTag guifg=#076678 guibg=NONE gui=NONE cterm=NONE
    hi jsxEndString guifg=#076678 guibg=NONE gui=NONE cterm=NONE
    hi jsxCloseString guifg=#076678 guibg=NONE gui=NONE cterm=NONE
    hi jsxIfOperator guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi jsxElseOperator guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi jsxDot guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi jsxNamespace guifg=#076678 guibg=NONE gui=NONE cterm=NONE
    hi jsxPunct guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi typeScriptReserved guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi typeScriptLabel guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi typeScriptFuncKeyword guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi typeScriptIdentifier guifg=#af3a03 guibg=NONE gui=NONE cterm=NONE
    hi typeScriptBraces guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi typeScriptEndColons guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi typeScriptDOMObjects guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi typeScriptAjaxMethods guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi typeScriptLogicSymbols guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi! link typeScriptDocSeeTag Comment
    hi! link typeScriptDocParam Comment
    hi! link typeScriptDocTags vimCommentTitle
    hi typeScriptGlobalObjects guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi typeScriptParens guifg=#665c54 guibg=NONE gui=NONE cterm=NONE
    hi typeScriptOpSymbols guifg=#665c54 guibg=NONE gui=NONE cterm=NONE
    hi typeScriptHtmlElemProperties guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi typeScriptNull guifg=#8f3f71 guibg=NONE gui=NONE cterm=NONE
    hi typeScriptInterpolationDelimiter guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi purescriptModuleKeyword guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi purescriptModuleName guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi purescriptWhere guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi purescriptDelimiter guifg=#7c6f64 guibg=NONE gui=NONE cterm=NONE
    hi purescriptType guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi purescriptImportKeyword guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi purescriptHidingKeyword guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi purescriptAsKeyword guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi purescriptStructure guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi purescriptOperator guifg=#076678 guibg=NONE gui=NONE cterm=NONE
    hi purescriptTypeVar guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi purescriptConstructor guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi purescriptFunction guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi purescriptConditional guifg=#af3a03 guibg=NONE gui=NONE cterm=NONE
    hi purescriptBacktick guifg=#af3a03 guibg=NONE gui=NONE cterm=NONE
    hi coffeeExtendedOp guifg=#665c54 guibg=NONE gui=NONE cterm=NONE
    hi coffeeSpecialOp guifg=#665c54 guibg=NONE gui=NONE cterm=NONE
    hi coffeeCurly guifg=#af3a03 guibg=NONE gui=NONE cterm=NONE
    hi coffeeParen guifg=#665c54 guibg=NONE gui=NONE cterm=NONE
    hi coffeeBracket guifg=#af3a03 guibg=NONE gui=NONE cterm=NONE
    hi rubyStringDelimiter guifg=#79740e guibg=NONE gui=NONE cterm=NONE
    hi rubyInterpolationDelimiter guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi objcTypeModifier guifg=#9d0006 guibg=NONE gui=NONE cterm=NONE
    hi objcDirective guifg=#076678 guibg=NONE gui=NONE cterm=NONE
    hi goDirective guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi goConstants guifg=#8f3f71 guibg=NONE gui=NONE cterm=NONE
    hi goDeclaration guifg=#9d0006 guibg=NONE gui=NONE cterm=NONE
    hi goDeclType guifg=#076678 guibg=NONE gui=NONE cterm=NONE
    hi goBuiltins guifg=#af3a03 guibg=NONE gui=NONE cterm=NONE
    hi luaIn guifg=#9d0006 guibg=NONE gui=NONE cterm=NONE
    hi luaFunction guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi luaTable guifg=#af3a03 guibg=NONE gui=NONE cterm=NONE
    hi moonSpecialOp guifg=#665c54 guibg=NONE gui=NONE cterm=NONE
    hi moonExtendedOp guifg=#665c54 guibg=NONE gui=NONE cterm=NONE
    hi moonFunction guifg=#665c54 guibg=NONE gui=NONE cterm=NONE
    hi moonObject guifg=#b57614 guibg=NONE gui=NONE cterm=NONE
    hi javaAnnotation guifg=#076678 guibg=NONE gui=NONE cterm=NONE
    hi javaDocTags guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi! link javaCommentTitle vimCommentTitle
    hi javaParen guifg=#665c54 guibg=NONE gui=NONE cterm=NONE
    hi javaParen1 guifg=#665c54 guibg=NONE gui=NONE cterm=NONE
    hi javaParen2 guifg=#665c54 guibg=NONE gui=NONE cterm=NONE
    hi javaParen3 guifg=#665c54 guibg=NONE gui=NONE cterm=NONE
    hi javaParen4 guifg=#665c54 guibg=NONE gui=NONE cterm=NONE
    hi javaParen5 guifg=#665c54 guibg=NONE gui=NONE cterm=NONE
    hi javaOperator guifg=#af3a03 guibg=NONE gui=NONE cterm=NONE
    hi javaVarArg guifg=#79740e guibg=NONE gui=NONE cterm=NONE
    hi! link elixirDocString Comment
    hi elixirStringDelimiter guifg=#79740e guibg=NONE gui=NONE cterm=NONE
    hi elixirInterpolationDelimiter guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi elixirModuleDeclaration guifg=#b57614 guibg=NONE gui=NONE cterm=NONE
    hi scalaNameDefinition guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi scalaCaseFollowing guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi scalaCapitalWord guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi scalaTypeExtension guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi scalaKeyword guifg=#9d0006 guibg=NONE gui=NONE cterm=NONE
    hi scalaKeywordModifier guifg=#9d0006 guibg=NONE gui=NONE cterm=NONE
    hi scalaSpecial guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi scalaOperator guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi scalaTypeDeclaration guifg=#b57614 guibg=NONE gui=NONE cterm=NONE
    hi scalaTypeTypePostDeclaration guifg=#b57614 guibg=NONE gui=NONE cterm=NONE
    hi scalaInstanceDeclaration guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi scalaInterpolation guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi markdownItalic guifg=#665c54 guibg=NONE gui=italic cterm=italic
    hi markdownH1 guifg=#79740e guibg=NONE gui=bold cterm=bold
    hi markdownH2 guifg=#79740e guibg=NONE gui=bold cterm=bold
    hi markdownH3 guifg=#b57614 guibg=NONE gui=bold cterm=bold
    hi markdownH4 guifg=#b57614 guibg=NONE gui=bold cterm=bold
    hi markdownH5 guifg=#b57614 guibg=NONE gui=NONE cterm=NONE
    hi markdownH6 guifg=#b57614 guibg=NONE gui=NONE cterm=NONE
    hi markdownCode guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi markdownCodeBlock guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi markdownCodeDelimiter guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi markdownBlockquote guifg=#928374 guibg=NONE gui=NONE cterm=NONE
    hi markdownListMarker guifg=#928374 guibg=NONE gui=NONE cterm=NONE
    hi markdownOrderedListMarker guifg=#928374 guibg=NONE gui=NONE cterm=NONE
    hi markdownRule guifg=#928374 guibg=NONE gui=NONE cterm=NONE
    hi markdownHeadingRule guifg=#928374 guibg=NONE gui=NONE cterm=NONE
    hi markdownUrlDelimiter guifg=#665c54 guibg=NONE gui=NONE cterm=NONE
    hi markdownLinkDelimiter guifg=#665c54 guibg=NONE gui=NONE cterm=NONE
    hi markdownLinkTextDelimiter guifg=#665c54 guibg=NONE gui=NONE cterm=NONE
    hi markdownHeadingDelimiter guifg=#af3a03 guibg=NONE gui=NONE cterm=NONE
    hi markdownUrl guifg=#8f3f71 guibg=NONE gui=NONE cterm=NONE
    hi markdownUrlTitleDelimiter guifg=#79740e guibg=NONE gui=NONE cterm=NONE
    hi markdownLinkText guifg=#928374 guibg=NONE gui=underline cterm=underline
    hi! link markdownIdDeclaration markdownLinkText
    hi haskellType guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi haskellIdentifier guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi haskellSeparator guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi haskellDelimiter guifg=#7c6f64 guibg=NONE gui=NONE cterm=NONE
    hi haskellOperators guifg=#076678 guibg=NONE gui=NONE cterm=NONE
    hi haskellBacktick guifg=#af3a03 guibg=NONE gui=NONE cterm=NONE
    hi haskellStatement guifg=#af3a03 guibg=NONE gui=NONE cterm=NONE
    hi haskellConditional guifg=#af3a03 guibg=NONE gui=NONE cterm=NONE
    hi haskellLet guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi haskellDefault guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi haskellWhere guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi haskellBottom guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi haskellBlockKeywords guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi haskellImportKeywords guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi haskellDeclKeyword guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi haskellDeriving guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi haskellAssocType guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
    hi haskellNumber guifg=#8f3f71 guibg=NONE gui=NONE cterm=NONE
    hi haskellPragma guifg=#8f3f71 guibg=NONE gui=NONE cterm=NONE
    hi haskellString guifg=#79740e guibg=NONE gui=NONE cterm=NONE
    hi haskellChar guifg=#79740e guibg=NONE gui=NONE cterm=NONE
    hi jsonKeyword guifg=#79740e guibg=NONE gui=NONE cterm=NONE
    hi jsonQuote guifg=#79740e guibg=NONE gui=NONE cterm=NONE
    hi jsonBraces guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    hi jsonString guifg=#3c3836 guibg=NONE gui=NONE cterm=NONE
    if !s:italics
      hi htmlBoldItalic gui=bold cterm=bold
      hi htmlBoldUnderlineItalic gui=bold,underline cterm=bold,underline
      hi htmlUnderlineItalic gui=underline cterm=underline
      hi htmlItalic gui=NONE cterm=NONE
      hi markdownItalic gui=NONE cterm=NONE
    endif
    if !get(g:, 'gruvbox_bold', 1)
      hi htmlTagName gui=NONE cterm=NONE
      hi htmlSpecialTagName gui=NONE cterm=NONE
      hi htmlBold gui=NONE cterm=NONE
      hi htmlBoldUnderline gui=underline cterm=underline
      hi htmlBoldItalic gui=italic cterm=italic
      hi htmlBoldUnderlineItalic gui=underline,italic cterm=underline,italic
      hi docbkKeyword gui=NONE cterm=NONE
      hi vimCommentTitle gui=NONE cterm=NONE
      hi clojureRegexpCharClass gui=NONE cterm=NONE
      hi pythonDottedName gui=NONE cterm=NONE
      hi jsExportDefault gui=NONE cterm=NONE
      hi jsFutureKeys gui=NONE cterm=NONE
      hi markdownH1 gui=NONE cterm=NONE
      hi markdownH2 gui=NONE cterm=NONE
      hi markdownH3 gui=NONE cterm=NONE
      hi markdownH4 gui=NONE cterm=NONE
    endif
  endif
endif

if s:t_Co >= 256
  if &background ==# 'dark'
    hi Terminal ctermfg=187 ctermbg=234 cterm=NONE
    if get(g:, 'gruvbox_transp_bg', 0)
      hi Normal ctermfg=187 ctermbg=NONE cterm=NONE
      hi CursorLineNr ctermfg=214 ctermbg=NONE cterm=NONE
      hi FoldColumn ctermfg=102 ctermbg=NONE cterm=NONE
      hi SignColumn ctermfg=187 ctermbg=NONE cterm=NONE
      hi VertSplit ctermfg=59 ctermbg=NONE cterm=NONE
    else
      hi Normal ctermfg=187 ctermbg=234 cterm=NONE
      hi CursorLineNr ctermfg=214 ctermbg=237 cterm=NONE
      hi FoldColumn ctermfg=102 ctermbg=237 cterm=NONE
      hi SignColumn ctermfg=187 ctermbg=237 cterm=NONE
      hi VertSplit ctermfg=59 ctermbg=234 cterm=NONE
    endif
    hi ColorColumn ctermfg=NONE ctermbg=237 cterm=NONE
    hi Comment ctermfg=102 ctermbg=NONE cterm=italic
    hi CursorLine ctermfg=NONE ctermbg=237 cterm=NONE
    hi Error ctermfg=203 ctermbg=234 cterm=bold,reverse
    hi ErrorMsg ctermfg=234 ctermbg=203 cterm=bold
    hi Folded ctermfg=102 ctermbg=237 cterm=italic
    hi LineNr ctermfg=243 ctermbg=NONE cterm=NONE
    hi MatchParen ctermfg=NONE ctermbg=239 cterm=bold,underline
    hi NonText ctermfg=239 ctermbg=NONE cterm=NONE
    hi Pmenu ctermfg=187 ctermbg=239 cterm=NONE
    hi PmenuSbar ctermfg=NONE ctermbg=239 cterm=NONE
    hi PmenuSel ctermfg=239 ctermbg=109 cterm=bold
    hi PmenuThumb ctermfg=NONE ctermbg=243 cterm=NONE
    hi SpecialKey ctermfg=102 ctermbg=NONE cterm=NONE
    hi StatusLine ctermfg=239 ctermbg=187 cterm=reverse
    hi StatusLineNC ctermfg=237 ctermbg=137 cterm=reverse
    hi TabLine ctermfg=243 ctermbg=237 cterm=NONE
    hi TabLineFill ctermfg=243 ctermbg=237 cterm=NONE
    hi TabLineSel ctermfg=142 ctermbg=237 cterm=NONE
    hi ToolbarButton ctermfg=230 ctermbg=59 cterm=bold
    hi ToolbarLine ctermfg=NONE ctermbg=59 cterm=NONE
    hi Visual ctermfg=NONE ctermbg=59 cterm=NONE
    hi WildMenu ctermfg=109 ctermbg=239 cterm=bold
    hi Conceal ctermfg=109 ctermbg=NONE cterm=NONE
    hi Cursor ctermfg=NONE ctermbg=NONE cterm=reverse
    hi DiffAdd ctermfg=142 ctermbg=234 cterm=reverse
    hi DiffChange ctermfg=107 ctermbg=234 cterm=reverse
    hi DiffDelete ctermfg=203 ctermbg=234 cterm=reverse
    hi DiffText ctermfg=214 ctermbg=234 cterm=reverse
    hi Directory ctermfg=142 ctermbg=NONE cterm=bold
    hi EndOfBuffer ctermfg=234 ctermbg=NONE cterm=NONE
    hi IncSearch ctermfg=208 ctermbg=234 cterm=reverse
    hi ModeMsg ctermfg=214 ctermbg=NONE cterm=bold
    hi MoreMsg ctermfg=214 ctermbg=NONE cterm=bold
    hi Question ctermfg=208 ctermbg=NONE cterm=bold
    hi Search ctermfg=214 ctermbg=234 cterm=reverse
    hi SpellBad ctermfg=203 ctermbg=NONE cterm=italic,underline
    hi SpellCap ctermfg=109 ctermbg=NONE cterm=italic,underline
    hi SpellLocal ctermfg=107 ctermbg=NONE cterm=italic,underline
    hi SpellRare ctermfg=175 ctermbg=NONE cterm=italic,underline
    hi Title ctermfg=142 ctermbg=NONE cterm=bold
    hi WarningMsg ctermfg=203 ctermbg=NONE cterm=bold
    hi Boolean ctermfg=175 ctermbg=NONE cterm=NONE
    hi Character ctermfg=175 ctermbg=NONE cterm=NONE
    hi Conditional ctermfg=203 ctermbg=NONE cterm=NONE
    hi Constant ctermfg=175 ctermbg=NONE cterm=NONE
    hi Define ctermfg=107 ctermbg=NONE cterm=NONE
    hi Debug ctermfg=203 ctermbg=NONE cterm=NONE
    hi Delimiter ctermfg=208 ctermbg=NONE cterm=NONE
    hi Error ctermfg=203 ctermbg=234 cterm=bold,reverse
    hi Exception ctermfg=203 ctermbg=NONE cterm=NONE
    hi Float ctermfg=175 ctermbg=NONE cterm=NONE
    hi Function ctermfg=142 ctermbg=NONE cterm=bold
    hi Identifier ctermfg=109 ctermbg=NONE cterm=NONE
    hi Ignore ctermfg=fg ctermbg=NONE cterm=NONE
    hi Include ctermfg=107 ctermbg=NONE cterm=NONE
    hi Keyword ctermfg=203 ctermbg=NONE cterm=NONE
    hi Label ctermfg=203 ctermbg=NONE cterm=NONE
    hi Macro ctermfg=107 ctermbg=NONE cterm=NONE
    hi Number ctermfg=175 ctermbg=NONE cterm=NONE
    hi Operator ctermfg=107 ctermbg=NONE cterm=NONE
    hi PreCondit ctermfg=107 ctermbg=NONE cterm=NONE
    hi PreProc ctermfg=107 ctermbg=NONE cterm=NONE
    hi Repeat ctermfg=203 ctermbg=NONE cterm=NONE
    hi SpecialChar ctermfg=203 ctermbg=NONE cterm=NONE
    hi SpecialComment ctermfg=203 ctermbg=NONE cterm=NONE
    hi Statement ctermfg=203 ctermbg=NONE cterm=NONE
    hi StorageClass ctermfg=208 ctermbg=NONE cterm=NONE
    hi Special ctermfg=208 ctermbg=NONE cterm=italic
    hi String ctermfg=142 ctermbg=NONE cterm=italic
    hi Structure ctermfg=107 ctermbg=NONE cterm=NONE
    hi Todo ctermfg=fg ctermbg=234 cterm=bold,italic
    hi Type ctermfg=214 ctermbg=NONE cterm=NONE
    hi Typedef ctermfg=214 ctermbg=NONE cterm=NONE
    hi Underlined ctermfg=109 ctermbg=NONE cterm=underline
    hi CursorIM ctermfg=NONE ctermbg=NONE cterm=reverse
    if !s:italics
      hi Comment cterm=NONE
      hi Folded cterm=NONE
      hi SpellBad cterm=underline
      hi SpellCap cterm=underline
      hi SpellLocal cterm=underline
      hi SpellRare cterm=underline
      hi Special cterm=NONE
      hi String cterm=NONE
      hi Todo cterm=bold
    endif
    if !get(g:, 'gruvbox_italicize_strings', 1)
      hi Special gui=NONE cterm=NONE
      hi String gui=NONE cterm=NONE
    endif
    hi NormalMode ctermfg=137 ctermbg=234 cterm=reverse
    hi InsertMode ctermfg=109 ctermbg=234 cterm=reverse
    hi ReplaceMode ctermfg=107 ctermbg=234 cterm=reverse
    hi VisualMode ctermfg=208 ctermbg=234 cterm=reverse
    hi CommandMode ctermfg=175 ctermbg=234 cterm=reverse
    hi Warnings ctermfg=208 ctermbg=234 cterm=reverse
    if has('nvim')
      hi! link TermCursor Cursor
      hi TermCursorNC ctermfg=237 ctermbg=187 cterm=NONE
    endif
    if get(g:, "gruvbox_plugin_hi_groups", 1)
      hi ALEError ctermfg=NONE ctermbg=NONE cterm=underline
      hi ALEWarning ctermfg=NONE ctermbg=NONE cterm=underline
      hi ALEInfo ctermfg=NONE ctermbg=NONE cterm=underline
      hi ALEErrorSign ctermfg=203 ctermbg=237 cterm=NONE
      hi ALEWarningSign ctermfg=214 ctermbg=237 cterm=NONE
      hi ALEInfoSign ctermfg=109 ctermbg=237 cterm=NONE
      hi BufTabLineCurrent ctermfg=234 ctermbg=137 cterm=NONE
      hi BufTabLineActive ctermfg=137 ctermbg=239 cterm=NONE
      hi BufTabLineHidden ctermfg=243 ctermbg=237 cterm=NONE
      hi BufTabLineFill ctermfg=234 ctermbg=234 cterm=NONE
      hi CocErrorSign ctermfg=203 ctermbg=237 cterm=NONE
      hi CocWarningSign ctermfg=208 ctermbg=237 cterm=NONE
      hi CocInfoSign ctermfg=214 ctermbg=237 cterm=NONE
      hi CocHintSign ctermfg=109 ctermbg=237 cterm=NONE
      hi CocErrorFloat ctermfg=203 ctermbg=NONE cterm=NONE
      hi CocWarningFloat ctermfg=208 ctermbg=NONE cterm=NONE
      hi CocInfoFloat ctermfg=214 ctermbg=NONE cterm=NONE
      hi CocHintFloat ctermfg=109 ctermbg=NONE cterm=NONE
      hi CtrlPMatch ctermfg=214 ctermbg=NONE cterm=NONE
      hi CtrlPNoEntries ctermfg=203 ctermbg=NONE cterm=NONE
      hi CtrlPPrtBase ctermfg=239 ctermbg=NONE cterm=NONE
      hi CtrlPPrtCursor ctermfg=109 ctermbg=NONE cterm=NONE
      hi CtrlPLinePre ctermfg=239 ctermbg=NONE cterm=NONE
      hi CtrlPMode1 ctermfg=109 ctermbg=239 cterm=bold
      hi CtrlPMode2 ctermfg=234 ctermbg=109 cterm=bold
      hi CtrlPStats ctermfg=137 ctermbg=239 cterm=bold
      hi DirvishPathTail ctermfg=107 ctermbg=NONE cterm=NONE
      hi DirvishArg ctermfg=214 ctermbg=NONE cterm=NONE
      hi! link EasyMotionTarget Search
      hi! link EasyMotionShade Comment
      hi gitcommitSelectedFile ctermfg=142 ctermbg=NONE cterm=NONE
      hi gitcommitDiscardedFile ctermfg=203 ctermbg=NONE cterm=NONE
      if get(g:, 'gruvbox_transp_bg', 0)
        hi GitGutterAdd ctermfg=142 ctermbg=NONE cterm=NONE
        hi GitGutterChange ctermfg=107 ctermbg=NONE cterm=NONE
        hi GitGutterDelete ctermfg=203 ctermbg=NONE cterm=NONE
        hi GitGutterChangeDelete ctermfg=107 ctermbg=NONE cterm=NONE
      else
        hi GitGutterAdd ctermfg=142 ctermbg=237 cterm=NONE
        hi GitGutterChange ctermfg=107 ctermbg=237 cterm=NONE
        hi GitGutterDelete ctermfg=203 ctermbg=237 cterm=NONE
        hi GitGutterChangeDelete ctermfg=107 ctermbg=237 cterm=NONE
      endif
      if get(g:, 'indent_guides_auto_colors', 0)
        if get(g:, 'gruvbox_invert_indent_guides', 0)
          hi IndentGuidesOdd ctermfg=234 ctermbg=239 cterm=reverse
          hi IndentGuidesEven ctermfg=234 ctermbg=237 cterm=reverse
        else
          hi IndentGuidesOdd ctermfg=234 ctermbg=239 cterm=NONE
          hi IndentGuidesEven ctermfg=234 ctermbg=237 cterm=NONE
        endif
      endif
      if !exists('g:indentLine_color_term')
        let g:indentLine_color_term = 239
      endif
      if !exists('g:indentLine_color_gui')
        let g:indentLine_color_gui = '#504945'
      endif
      hi LspDiagnosticsDefaultError ctermfg=203 ctermbg=NONE cterm=NONE
      hi LspDiagnosticsSignError ctermfg=203 ctermbg=237 cterm=NONE
      hi LspDiagnosticsUnderlineError ctermfg=NONE ctermbg=NONE cterm=NONE
      hi LspDiagnosticsDefaultWarning ctermfg=208 ctermbg=NONE cterm=NONE
      hi LspDiagnosticsSignWarning ctermfg=208 ctermbg=237 cterm=NONE
      hi LspDiagnosticsUnderlineWarning ctermfg=NONE ctermbg=NONE cterm=NONE
      hi LspDiagnosticsDefaultInformation ctermfg=214 ctermbg=NONE cterm=NONE
      hi LspDiagnosticsSignInformation ctermfg=214 ctermbg=237 cterm=NONE
      hi LspDiagnosticsUnderlineInformation ctermfg=NONE ctermbg=NONE cterm=NONE
      hi LspDiagnosticsDefaultHint ctermfg=109 ctermbg=NONE cterm=NONE
      hi LspDiagnosticsSignHint ctermfg=109 ctermbg=237 cterm=NONE
      hi LspDiagnosticsUnderlineHint ctermfg=NONE ctermbg=NONE cterm=NONE
      hi LanguageClientError ctermfg=203 ctermbg=NONE cterm=NONE
      hi LanguageClientErrorSign ctermfg=203 ctermbg=234 cterm=NONE
      hi LanguageClientWarning ctermfg=214 ctermbg=NONE cterm=NONE
      hi LanguageClientWarningSign ctermfg=214 ctermbg=237 cterm=NONE
      hi LangaugeClientInfo ctermfg=109 ctermbg=NONE cterm=NONE
      hi LanguageClientInfoSign ctermfg=109 ctermbg=237 cterm=NONE
      hi LanguageClientCodeLens ctermfg=109 ctermbg=NONE cterm=NONE
      hi NERDTreeDir ctermfg=107 ctermbg=NONE cterm=NONE
      hi NERDTreeDirSlash ctermfg=107 ctermbg=NONE cterm=NONE
      hi NERDTreeOpenable ctermfg=208 ctermbg=NONE cterm=NONE
      hi NERDTreeClosable ctermfg=208 ctermbg=NONE cterm=NONE
      hi NERDTreeFile ctermfg=187 ctermbg=NONE cterm=NONE
      hi NERDTreeExecFile ctermfg=214 ctermbg=NONE cterm=NONE
      hi NERDTreeUp ctermfg=102 ctermbg=NONE cterm=NONE
      hi NERDTreeCWD ctermfg=142 ctermbg=NONE cterm=NONE
      hi NERDTreeHelp ctermfg=187 ctermbg=NONE cterm=NONE
      hi NERDTreeToggleOn ctermfg=142 ctermbg=NONE cterm=NONE
      hi NERDTreeToggleOff ctermfg=203 ctermbg=NONE cterm=NONE
      hi netrwDir ctermfg=107 ctermbg=NONE cterm=NONE
      hi netrwClassify ctermfg=107 ctermbg=NONE cterm=NONE
      hi netrwLink ctermfg=102 ctermbg=NONE cterm=NONE
      hi netrwSymLink ctermfg=187 ctermbg=NONE cterm=NONE
      hi netrwExe ctermfg=214 ctermbg=NONE cterm=NONE
      hi netrwComment ctermfg=102 ctermbg=NONE cterm=NONE
      hi netrwList ctermfg=109 ctermbg=NONE cterm=NONE
      hi netrwHelpCmd ctermfg=107 ctermbg=NONE cterm=NONE
      hi netrwCmdSep ctermfg=144 ctermbg=NONE cterm=NONE
      hi netrwVersion ctermfg=142 ctermbg=NONE cterm=NONE
      " Rainbow Parentheses
      if !exists('g:rbpt_colorpairs')
        let g:rbpt_colorpairs = [['blue', '#458588'], ['magenta', '#b16286'],
              \ ['red', '#cc241d'], ['166', '#d65d0e']]
      endif

      let g:rainbow_guifgs = [ '#d65d0e', '#cc241d', '#b16286', '#458588' ]
      let g:rainbow_ctermfgs = [ '166', 'red', 'magenta', 'blue' ]

      if !exists('g:rainbow_conf')
        let g:rainbow_conf = {}
      endif
      if !has_key(g:rainbow_conf, 'guifgs')
        let g:rainbow_conf['guifgs'] = g:rainbow_guifgs
      endif
      if !has_key(g:rainbow_conf, 'ctermfgs')
        let g:rainbow_conf['ctermfgs'] = g:rainbow_ctermfgs
      endif

      let g:niji_dark_colours = g:rbpt_colorpairs
      let g:niji_light_colours = g:rbpt_colorpairs
      hi ShowMarksHLl ctermfg=109 ctermbg=237 cterm=NONE
      hi ShowMarksHLu ctermfg=109 ctermbg=237 cterm=NONE
      hi ShowMarksHLo ctermfg=109 ctermbg=237 cterm=NONE
      hi ShowMarksHLm ctermfg=109 ctermbg=237 cterm=NONE
      hi SignifySignAdd ctermfg=142 ctermbg=237 cterm=NONE
      hi SignifySignChange ctermfg=107 ctermbg=237 cterm=NONE
      hi SignifySignDelete ctermfg=203 ctermbg=237 cterm=NONE
      hi SignatureMarkText ctermfg=109 ctermbg=237 cterm=NONE
      hi SignatureMarkerText ctermfg=175 ctermbg=237 cterm=NONE
      hi StartifyBracket ctermfg=144 ctermbg=NONE cterm=NONE
      hi StartifyFile ctermfg=187 ctermbg=NONE cterm=NONE
      hi StartifyNumber ctermfg=109 ctermbg=NONE cterm=NONE
      hi StartifyPath ctermfg=102 ctermbg=NONE cterm=NONE
      hi StartifySlash ctermfg=102 ctermbg=NONE cterm=NONE
      hi StartifySection ctermfg=214 ctermbg=NONE cterm=NONE
      hi StartifySpecial ctermfg=239 ctermbg=NONE cterm=NONE
      hi StartifyHeader ctermfg=208 ctermbg=NONE cterm=NONE
      hi StartifyFooter ctermfg=239 ctermbg=NONE cterm=NONE
      hi SyntasticError ctermfg=NONE ctermbg=NONE cterm=underline
      hi SyntasticWarning ctermfg=NONE ctermbg=NONE cterm=underline
      hi SyntasticErrorSign ctermfg=203 ctermbg=237 cterm=NONE
      hi SyntasticWarningSign ctermfg=214 ctermbg=237 cterm=NONE
      hi multiple_cursors_cursor ctermfg=NONE ctermbg=NONE cterm=reverse
      hi multiple_cursors_visual ctermfg=NONE ctermbg=239 cterm=NONE
      let g:vimshell_escape_colors = [
            \ '#7c6f64', '#fb4934', '#b8bb26', '#fabd2f',
            \ '#83a598', '#d3869b', '#8ec07c', '#a89984',
            \ '#1d2021', '#fb4934', '#b8bb26', '#fe8019',
            \ '#83a598', '#d3869b', '#8ec07c', '#fbf1c7'
            \ ]
    endif
    if get(g:, "gruvbox_filetype_hi_groups", 1)
      hi diffAdded ctermfg=142 ctermbg=NONE cterm=NONE
      hi diffRemoved ctermfg=203 ctermbg=NONE cterm=NONE
      hi diffChanged ctermfg=107 ctermbg=NONE cterm=NONE
      hi diffFile ctermfg=208 ctermbg=NONE cterm=NONE
      hi diffNewFile ctermfg=214 ctermbg=NONE cterm=NONE
      hi diffLine ctermfg=109 ctermbg=NONE cterm=NONE
      hi htmlTag ctermfg=109 ctermbg=NONE cterm=NONE
      hi htmlEndTag ctermfg=109 ctermbg=NONE cterm=NONE
      hi htmlTagName ctermfg=107 ctermbg=NONE cterm=bold
      hi htmlArg ctermfg=107 ctermbg=NONE cterm=NONE
      hi htmlScriptTag ctermfg=175 ctermbg=NONE cterm=NONE
      hi htmlTagN ctermfg=187 ctermbg=NONE cterm=NONE
      hi htmlSpecialTagName ctermfg=107 ctermbg=NONE cterm=bold
      hi htmlLink ctermfg=137 ctermbg=NONE cterm=underline
      hi htmlSpecialChar ctermfg=208 ctermbg=NONE cterm=NONE
      hi htmlBold ctermfg=fg ctermbg=234 cterm=bold
      hi htmlBoldUnderline ctermfg=fg ctermbg=234 cterm=bold,underline
      hi htmlBoldItalic ctermfg=fg ctermbg=234 cterm=bold,italic
      hi htmlBoldUnderlineItalic ctermfg=fg ctermbg=234 cterm=bold,italic,underline
      hi htmlUnderline ctermfg=fg ctermbg=234 cterm=underline
      hi htmlUnderlineItalic ctermfg=fg ctermbg=234 cterm=italic,underline
      hi htmlItalic ctermfg=fg ctermbg=234 cterm=italic
      hi xmlTag ctermfg=109 ctermbg=NONE cterm=NONE
      hi xmlEndTag ctermfg=109 ctermbg=NONE cterm=NONE
      hi xmlTagName ctermfg=109 ctermbg=NONE cterm=NONE
      hi xmlEqual ctermfg=109 ctermbg=NONE cterm=NONE
      hi docbkKeyword ctermfg=107 ctermbg=NONE cterm=bold
      hi xmlDocTypeDecl ctermfg=102 ctermbg=NONE cterm=NONE
      hi xmlDocTypeKeyword ctermfg=175 ctermbg=NONE cterm=NONE
      hi xmlCdataStart ctermfg=102 ctermbg=NONE cterm=NONE
      hi xmlCdataCdata ctermfg=175 ctermbg=NONE cterm=NONE
      hi dtdFunction ctermfg=102 ctermbg=NONE cterm=NONE
      hi dtdTagName ctermfg=175 ctermbg=NONE cterm=NONE
      hi xmlAttrib ctermfg=107 ctermbg=NONE cterm=NONE
      hi xmlProcessingDelim ctermfg=102 ctermbg=NONE cterm=NONE
      hi dtdParamEntityPunct ctermfg=102 ctermbg=NONE cterm=NONE
      hi dtdParamEntityDPunct ctermfg=102 ctermbg=NONE cterm=NONE
      hi xmlAttribPunct ctermfg=102 ctermbg=NONE cterm=NONE
      hi xmlEntity ctermfg=208 ctermbg=NONE cterm=NONE
      hi xmlEntityPunct ctermfg=208 ctermbg=NONE cterm=NONE
      hi vimCommentTitle ctermfg=137 ctermbg=NONE cterm=bold
      hi vimNotation ctermfg=208 ctermbg=NONE cterm=NONE
      hi vimBracket ctermfg=208 ctermbg=NONE cterm=NONE
      hi vimMapModKey ctermfg=208 ctermbg=NONE cterm=NONE
      hi vimFuncSID ctermfg=144 ctermbg=NONE cterm=NONE
      hi vimSetSep ctermfg=144 ctermbg=NONE cterm=NONE
      hi vimSep ctermfg=144 ctermbg=NONE cterm=NONE
      hi vimContinue ctermfg=144 ctermbg=NONE cterm=NONE
      hi clojureKeyword ctermfg=109 ctermbg=NONE cterm=NONE
      hi clojureCond ctermfg=208 ctermbg=NONE cterm=NONE
      hi clojureSpecial ctermfg=208 ctermbg=NONE cterm=NONE
      hi clojureDefine ctermfg=208 ctermbg=NONE cterm=NONE
      hi clojureFunc ctermfg=214 ctermbg=NONE cterm=NONE
      hi clojureRepeat ctermfg=214 ctermbg=NONE cterm=NONE
      hi clojureCharacter ctermfg=107 ctermbg=NONE cterm=NONE
      hi clojureStringEscape ctermfg=107 ctermbg=NONE cterm=NONE
      hi clojureException ctermfg=203 ctermbg=NONE cterm=NONE
      hi clojureRegexp ctermfg=107 ctermbg=NONE cterm=NONE
      hi clojureRegexpEscape ctermfg=107 ctermbg=NONE cterm=NONE
      hi clojureRegexpCharClass ctermfg=144 ctermbg=NONE cterm=bold
      hi! link clojureRegexpMod clojureRegexpCharClass
      hi! link clojureRegexpQuantifier clojureRegexpCharClass
      hi clojureParen ctermfg=144 ctermbg=NONE cterm=NONE
      hi clojureAnonArg ctermfg=214 ctermbg=NONE cterm=NONE
      hi clojureVariable ctermfg=109 ctermbg=NONE cterm=NONE
      hi clojureMacro ctermfg=208 ctermbg=NONE cterm=NONE
      hi clojureMeta ctermfg=214 ctermbg=NONE cterm=NONE
      hi clojureDeref ctermfg=214 ctermbg=NONE cterm=NONE
      hi clojureQuote ctermfg=214 ctermbg=NONE cterm=NONE
      hi clojureUnquote ctermfg=214 ctermbg=NONE cterm=NONE
      hi cOperator ctermfg=175 ctermbg=NONE cterm=NONE
      hi cStructure ctermfg=208 ctermbg=NONE cterm=NONE
      hi pythonBuiltin ctermfg=208 ctermbg=NONE cterm=NONE
      hi pythonBuiltinObj ctermfg=208 ctermbg=NONE cterm=NONE
      hi pythonBuiltinFunc ctermfg=208 ctermbg=NONE cterm=NONE
      hi pythonFunction ctermfg=107 ctermbg=NONE cterm=NONE
      hi pythonDecorator ctermfg=203 ctermbg=NONE cterm=NONE
      hi pythonInclude ctermfg=109 ctermbg=NONE cterm=NONE
      hi pythonImport ctermfg=109 ctermbg=NONE cterm=NONE
      hi pythonRun ctermfg=109 ctermbg=NONE cterm=NONE
      hi pythonCoding ctermfg=109 ctermbg=NONE cterm=NONE
      hi pythonOperator ctermfg=203 ctermbg=NONE cterm=NONE
      hi pythonException ctermfg=203 ctermbg=NONE cterm=NONE
      hi pythonExceptions ctermfg=175 ctermbg=NONE cterm=NONE
      hi pythonBoolean ctermfg=175 ctermbg=NONE cterm=NONE
      hi pythonDot ctermfg=144 ctermbg=NONE cterm=NONE
      hi pythonConditional ctermfg=203 ctermbg=NONE cterm=NONE
      hi pythonRepeat ctermfg=203 ctermbg=NONE cterm=NONE
      hi pythonDottedName ctermfg=142 ctermbg=NONE cterm=bold
      hi cssBraces ctermfg=109 ctermbg=NONE cterm=NONE
      hi cssFunctionName ctermfg=214 ctermbg=NONE cterm=NONE
      hi cssIdentifier ctermfg=208 ctermbg=NONE cterm=NONE
      hi cssClassName ctermfg=142 ctermbg=NONE cterm=NONE
      hi cssColor ctermfg=109 ctermbg=NONE cterm=NONE
      hi cssSelectorOp ctermfg=109 ctermbg=NONE cterm=NONE
      hi cssSelectorOp2 ctermfg=109 ctermbg=NONE cterm=NONE
      hi cssImportant ctermfg=142 ctermbg=NONE cterm=NONE
      hi cssVendor ctermfg=187 ctermbg=NONE cterm=NONE
      hi cssTextProp ctermfg=107 ctermbg=NONE cterm=NONE
      hi cssAnimationProp ctermfg=107 ctermbg=NONE cterm=NONE
      hi cssUIProp ctermfg=214 ctermbg=NONE cterm=NONE
      hi cssTransformProp ctermfg=107 ctermbg=NONE cterm=NONE
      hi cssTransitionProp ctermfg=107 ctermbg=NONE cterm=NONE
      hi cssPrintProp ctermfg=107 ctermbg=NONE cterm=NONE
      hi cssPositioningProp ctermfg=214 ctermbg=NONE cterm=NONE
      hi cssBoxProp ctermfg=107 ctermbg=NONE cterm=NONE
      hi cssFontDescriptorProp ctermfg=107 ctermbg=NONE cterm=NONE
      hi cssFlexibleBoxProp ctermfg=107 ctermbg=NONE cterm=NONE
      hi cssBorderOutlineProp ctermfg=107 ctermbg=NONE cterm=NONE
      hi cssBackgroundProp ctermfg=107 ctermbg=NONE cterm=NONE
      hi cssMarginProp ctermfg=107 ctermbg=NONE cterm=NONE
      hi cssListProp ctermfg=107 ctermbg=NONE cterm=NONE
      hi cssTableProp ctermfg=107 ctermbg=NONE cterm=NONE
      hi cssFontProp ctermfg=107 ctermbg=NONE cterm=NONE
      hi cssPaddingProp ctermfg=107 ctermbg=NONE cterm=NONE
      hi cssDimensionProp ctermfg=107 ctermbg=NONE cterm=NONE
      hi cssRenderProp ctermfg=107 ctermbg=NONE cterm=NONE
      hi cssColorProp ctermfg=107 ctermbg=NONE cterm=NONE
      hi cssGeneratedContentProp ctermfg=107 ctermbg=NONE cterm=NONE
      hi javaScriptBraces ctermfg=187 ctermbg=NONE cterm=NONE
      hi javaScriptFunction ctermfg=107 ctermbg=NONE cterm=NONE
      hi javaScriptIdentifier ctermfg=203 ctermbg=NONE cterm=NONE
      hi javaScriptMember ctermfg=109 ctermbg=NONE cterm=NONE
      hi javaScriptNumber ctermfg=175 ctermbg=NONE cterm=NONE
      hi javaScriptNull ctermfg=175 ctermbg=NONE cterm=NONE
      hi javaScriptParens ctermfg=144 ctermbg=NONE cterm=NONE
      hi javascriptImport ctermfg=107 ctermbg=NONE cterm=NONE
      hi javascriptExport ctermfg=107 ctermbg=NONE cterm=NONE
      hi javascriptClassKeyword ctermfg=107 ctermbg=NONE cterm=NONE
      hi javascriptClassExtends ctermfg=107 ctermbg=NONE cterm=NONE
      hi javascriptDefault ctermfg=107 ctermbg=NONE cterm=NONE
      hi javascriptClassName ctermfg=214 ctermbg=NONE cterm=NONE
      hi javascriptClassSuperName ctermfg=214 ctermbg=NONE cterm=NONE
      hi javascriptGlobal ctermfg=214 ctermbg=NONE cterm=NONE
      hi javascriptEndColons ctermfg=187 ctermbg=NONE cterm=NONE
      hi javascriptFuncArg ctermfg=187 ctermbg=NONE cterm=NONE
      hi javascriptGlobalMethod ctermfg=187 ctermbg=NONE cterm=NONE
      hi javascriptNodeGlobal ctermfg=187 ctermbg=NONE cterm=NONE
      hi javascriptBOMWindowProp ctermfg=187 ctermbg=NONE cterm=NONE
      hi javascriptArrayMethod ctermfg=187 ctermbg=NONE cterm=NONE
      hi javascriptArrayStaticMethod ctermfg=187 ctermbg=NONE cterm=NONE
      hi javascriptCacheMethod ctermfg=187 ctermbg=NONE cterm=NONE
      hi javascriptDateMethod ctermfg=187 ctermbg=NONE cterm=NONE
      hi javascriptMathStaticMethod ctermfg=187 ctermbg=NONE cterm=NONE
      hi javascriptURLUtilsProp ctermfg=187 ctermbg=NONE cterm=NONE
      hi javascriptBOMNavigatorProp ctermfg=187 ctermbg=NONE cterm=NONE
      hi javascriptDOMDocMethod ctermfg=187 ctermbg=NONE cterm=NONE
      hi javascriptDOMDocProp ctermfg=187 ctermbg=NONE cterm=NONE
      hi javascriptBOMLocationMethod ctermfg=187 ctermbg=NONE cterm=NONE
      hi javascriptBOMWindowMethod ctermfg=187 ctermbg=NONE cterm=NONE
      hi javascriptStringMethod ctermfg=187 ctermbg=NONE cterm=NONE
      hi javascriptVariable ctermfg=208 ctermbg=NONE cterm=NONE
      hi javascriptIdentifier ctermfg=208 ctermbg=NONE cterm=NONE
      hi javascriptClassSuper ctermfg=208 ctermbg=NONE cterm=NONE
      hi javascriptFuncKeyword ctermfg=107 ctermbg=NONE cterm=NONE
      hi javascriptAsyncFunc ctermfg=107 ctermbg=NONE cterm=NONE
      hi javascriptClassStatic ctermfg=208 ctermbg=NONE cterm=NONE
      hi javascriptOperator ctermfg=203 ctermbg=NONE cterm=NONE
      hi javascriptForOperator ctermfg=203 ctermbg=NONE cterm=NONE
      hi javascriptYield ctermfg=203 ctermbg=NONE cterm=NONE
      hi javascriptExceptions ctermfg=203 ctermbg=NONE cterm=NONE
      hi javascriptMessage ctermfg=203 ctermbg=NONE cterm=NONE
      hi javascriptTemplateSB ctermfg=107 ctermbg=NONE cterm=NONE
      hi javascriptTemplateSubstitution ctermfg=187 ctermbg=NONE cterm=NONE
      hi javascriptLabel ctermfg=187 ctermbg=NONE cterm=NONE
      hi javascriptObjectLabel ctermfg=187 ctermbg=NONE cterm=NONE
      hi javascriptPropertyName ctermfg=187 ctermbg=NONE cterm=NONE
      hi javascriptLogicSymbols ctermfg=187 ctermbg=NONE cterm=NONE
      hi javascriptArrowFunc ctermfg=214 ctermbg=NONE cterm=NONE
      hi javascriptDocParamName ctermfg=137 ctermbg=NONE cterm=NONE
      hi javascriptDocTags ctermfg=137 ctermbg=NONE cterm=NONE
      hi javascriptDocNotation ctermfg=137 ctermbg=NONE cterm=NONE
      hi javascriptDocParamType ctermfg=137 ctermbg=NONE cterm=NONE
      hi javascriptDocNamedParamType ctermfg=137 ctermbg=NONE cterm=NONE
      hi javascriptBrackets ctermfg=187 ctermbg=NONE cterm=NONE
      hi javascriptDOMElemAttrs ctermfg=187 ctermbg=NONE cterm=NONE
      hi javascriptDOMEventMethod ctermfg=187 ctermbg=NONE cterm=NONE
      hi javascriptDOMNodeMethod ctermfg=187 ctermbg=NONE cterm=NONE
      hi javascriptDOMStorageMethod ctermfg=187 ctermbg=NONE cterm=NONE
      hi javascriptHeadersMethod ctermfg=187 ctermbg=NONE cterm=NONE
      hi javascriptAsyncFuncKeyword ctermfg=203 ctermbg=NONE cterm=NONE
      hi javascriptAwaitFuncKeyword ctermfg=203 ctermbg=NONE cterm=NONE
      hi jsImport ctermfg=203 ctermbg=NONE cterm=NONE
      hi jsExport ctermfg=203 ctermbg=NONE cterm=NONE
      hi jsFrom ctermfg=203 ctermbg=NONE cterm=NONE
      hi jsThis ctermfg=175 ctermbg=NONE cterm=NONE
      hi jsParen ctermfg=109 ctermbg=NONE cterm=NONE
      hi jsOperator ctermfg=107 ctermbg=NONE cterm=NONE
      hi jsSpreadOperator ctermfg=142 ctermbg=NONE cterm=NONE
      hi jsSpreadExpression ctermfg=109 ctermbg=NONE cterm=NONE
      hi jsClassKeyword ctermfg=203 ctermbg=NONE cterm=NONE
      hi jsClassProperty ctermfg=142 ctermbg=NONE cterm=NONE
      hi jsExtendsKeyword ctermfg=203 ctermbg=NONE cterm=NONE
      hi jsExportDefault ctermfg=208 ctermbg=NONE cterm=bold
      hi jsTemplateBraces ctermfg=107 ctermbg=NONE cterm=NONE
      hi jsGlobalNodeObjects ctermfg=187 ctermbg=NONE cterm=NONE
      hi jsGlobalObjects ctermfg=187 ctermbg=NONE cterm=NONE
      hi jsFunction ctermfg=142 ctermbg=NONE cterm=NONE
      hi jsFuncParens ctermfg=175 ctermbg=NONE cterm=NONE
      hi jsFuncBlock ctermfg=109 ctermbg=NONE cterm=NONE
      hi jsParens ctermfg=144 ctermbg=NONE cterm=NONE
      hi jsNull ctermfg=175 ctermbg=NONE cterm=NONE
      hi jsUndefined ctermfg=175 ctermbg=NONE cterm=NONE
      hi jsClassDefinition ctermfg=214 ctermbg=NONE cterm=NONE
      hi jsFunctionKey ctermfg=142 ctermbg=NONE cterm=NONE
      hi jsBracket ctermfg=203 ctermbg=NONE cterm=NONE
      hi jsObjectColon ctermfg=203 ctermbg=NONE cterm=NONE
      hi jsObjectProp ctermfg=109 ctermbg=NONE cterm=NONE
      hi jsFuncBraces ctermfg=142 ctermbg=NONE cterm=NONE
      hi jsVariableDef ctermfg=214 ctermbg=NONE cterm=NONE
      hi jsObjectValue ctermfg=109 ctermbg=NONE cterm=NONE
      hi jsDestructuringBlock ctermfg=214 ctermbg=NONE cterm=NONE
      hi jsParenIfElse ctermfg=109 ctermbg=NONE cterm=NONE
      hi jsClassBlock ctermfg=109 ctermbg=NONE cterm=NONE
      hi jsFutureKeys ctermfg=208 ctermbg=NONE cterm=bold
      hi jsStorageClass ctermfg=208 ctermbg=NONE cterm=NONE
      hi jsModuleKeyword ctermfg=109 ctermbg=NONE cterm=NONE
      hi jsObjectShorthandProp ctermfg=109 ctermbg=NONE cterm=NONE
      hi jsxRegion ctermfg=109 ctermbg=NONE cterm=NONE
      hi jsxTagName ctermfg=109 ctermbg=NONE cterm=NONE
      hi jsxComponentName ctermfg=214 ctermbg=NONE cterm=NONE
      hi jsxEscapeJsAttributes ctermfg=109 ctermbg=NONE cterm=NONE
      hi jsxEscapeJsContent ctermfg=109 ctermbg=NONE cterm=NONE
      hi jsxAttrib ctermfg=214 ctermbg=NONE cterm=NONE
      hi jsxAttributeBraces ctermfg=187 ctermbg=NONE cterm=NONE
      hi jsxEqual ctermfg=107 ctermbg=NONE cterm=NONE
      hi jsxString ctermfg=142 ctermbg=NONE cterm=NONE
      hi jsxCloseTag ctermfg=109 ctermbg=NONE cterm=NONE
      hi jsxEndTag ctermfg=109 ctermbg=NONE cterm=NONE
      hi jsxEndString ctermfg=109 ctermbg=NONE cterm=NONE
      hi jsxCloseString ctermfg=109 ctermbg=NONE cterm=NONE
      hi jsxIfOperator ctermfg=107 ctermbg=NONE cterm=NONE
      hi jsxElseOperator ctermfg=107 ctermbg=NONE cterm=NONE
      hi jsxDot ctermfg=187 ctermbg=NONE cterm=NONE
      hi jsxNamespace ctermfg=109 ctermbg=NONE cterm=NONE
      hi jsxPunct ctermfg=107 ctermbg=NONE cterm=NONE
      hi typeScriptReserved ctermfg=107 ctermbg=NONE cterm=NONE
      hi typeScriptLabel ctermfg=107 ctermbg=NONE cterm=NONE
      hi typeScriptFuncKeyword ctermfg=107 ctermbg=NONE cterm=NONE
      hi typeScriptIdentifier ctermfg=208 ctermbg=NONE cterm=NONE
      hi typeScriptBraces ctermfg=187 ctermbg=NONE cterm=NONE
      hi typeScriptEndColons ctermfg=187 ctermbg=NONE cterm=NONE
      hi typeScriptDOMObjects ctermfg=187 ctermbg=NONE cterm=NONE
      hi typeScriptAjaxMethods ctermfg=187 ctermbg=NONE cterm=NONE
      hi typeScriptLogicSymbols ctermfg=187 ctermbg=NONE cterm=NONE
      hi! link typeScriptDocSeeTag Comment
      hi! link typeScriptDocParam Comment
      hi! link typeScriptDocTags vimCommentTitle
      hi typeScriptGlobalObjects ctermfg=187 ctermbg=NONE cterm=NONE
      hi typeScriptParens ctermfg=144 ctermbg=NONE cterm=NONE
      hi typeScriptOpSymbols ctermfg=144 ctermbg=NONE cterm=NONE
      hi typeScriptHtmlElemProperties ctermfg=187 ctermbg=NONE cterm=NONE
      hi typeScriptNull ctermfg=175 ctermbg=NONE cterm=NONE
      hi typeScriptInterpolationDelimiter ctermfg=107 ctermbg=NONE cterm=NONE
      hi purescriptModuleKeyword ctermfg=107 ctermbg=NONE cterm=NONE
      hi purescriptModuleName ctermfg=187 ctermbg=NONE cterm=NONE
      hi purescriptWhere ctermfg=107 ctermbg=NONE cterm=NONE
      hi purescriptDelimiter ctermfg=137 ctermbg=NONE cterm=NONE
      hi purescriptType ctermfg=187 ctermbg=NONE cterm=NONE
      hi purescriptImportKeyword ctermfg=107 ctermbg=NONE cterm=NONE
      hi purescriptHidingKeyword ctermfg=107 ctermbg=NONE cterm=NONE
      hi purescriptAsKeyword ctermfg=107 ctermbg=NONE cterm=NONE
      hi purescriptStructure ctermfg=107 ctermbg=NONE cterm=NONE
      hi purescriptOperator ctermfg=109 ctermbg=NONE cterm=NONE
      hi purescriptTypeVar ctermfg=187 ctermbg=NONE cterm=NONE
      hi purescriptConstructor ctermfg=187 ctermbg=NONE cterm=NONE
      hi purescriptFunction ctermfg=187 ctermbg=NONE cterm=NONE
      hi purescriptConditional ctermfg=208 ctermbg=NONE cterm=NONE
      hi purescriptBacktick ctermfg=208 ctermbg=NONE cterm=NONE
      hi coffeeExtendedOp ctermfg=144 ctermbg=NONE cterm=NONE
      hi coffeeSpecialOp ctermfg=144 ctermbg=NONE cterm=NONE
      hi coffeeCurly ctermfg=208 ctermbg=NONE cterm=NONE
      hi coffeeParen ctermfg=144 ctermbg=NONE cterm=NONE
      hi coffeeBracket ctermfg=208 ctermbg=NONE cterm=NONE
      hi rubyStringDelimiter ctermfg=142 ctermbg=NONE cterm=NONE
      hi rubyInterpolationDelimiter ctermfg=107 ctermbg=NONE cterm=NONE
      hi objcTypeModifier ctermfg=203 ctermbg=NONE cterm=NONE
      hi objcDirective ctermfg=109 ctermbg=NONE cterm=NONE
      hi goDirective ctermfg=107 ctermbg=NONE cterm=NONE
      hi goConstants ctermfg=175 ctermbg=NONE cterm=NONE
      hi goDeclaration ctermfg=203 ctermbg=NONE cterm=NONE
      hi goDeclType ctermfg=109 ctermbg=NONE cterm=NONE
      hi goBuiltins ctermfg=208 ctermbg=NONE cterm=NONE
      hi luaIn ctermfg=203 ctermbg=NONE cterm=NONE
      hi luaFunction ctermfg=107 ctermbg=NONE cterm=NONE
      hi luaTable ctermfg=208 ctermbg=NONE cterm=NONE
      hi moonSpecialOp ctermfg=144 ctermbg=NONE cterm=NONE
      hi moonExtendedOp ctermfg=144 ctermbg=NONE cterm=NONE
      hi moonFunction ctermfg=144 ctermbg=NONE cterm=NONE
      hi moonObject ctermfg=214 ctermbg=NONE cterm=NONE
      hi javaAnnotation ctermfg=109 ctermbg=NONE cterm=NONE
      hi javaDocTags ctermfg=107 ctermbg=NONE cterm=NONE
      hi! link javaCommentTitle vimCommentTitle
      hi javaParen ctermfg=144 ctermbg=NONE cterm=NONE
      hi javaParen1 ctermfg=144 ctermbg=NONE cterm=NONE
      hi javaParen2 ctermfg=144 ctermbg=NONE cterm=NONE
      hi javaParen3 ctermfg=144 ctermbg=NONE cterm=NONE
      hi javaParen4 ctermfg=144 ctermbg=NONE cterm=NONE
      hi javaParen5 ctermfg=144 ctermbg=NONE cterm=NONE
      hi javaOperator ctermfg=208 ctermbg=NONE cterm=NONE
      hi javaVarArg ctermfg=142 ctermbg=NONE cterm=NONE
      hi! link elixirDocString Comment
      hi elixirStringDelimiter ctermfg=142 ctermbg=NONE cterm=NONE
      hi elixirInterpolationDelimiter ctermfg=107 ctermbg=NONE cterm=NONE
      hi elixirModuleDeclaration ctermfg=214 ctermbg=NONE cterm=NONE
      hi scalaNameDefinition ctermfg=187 ctermbg=NONE cterm=NONE
      hi scalaCaseFollowing ctermfg=187 ctermbg=NONE cterm=NONE
      hi scalaCapitalWord ctermfg=187 ctermbg=NONE cterm=NONE
      hi scalaTypeExtension ctermfg=187 ctermbg=NONE cterm=NONE
      hi scalaKeyword ctermfg=203 ctermbg=NONE cterm=NONE
      hi scalaKeywordModifier ctermfg=203 ctermbg=NONE cterm=NONE
      hi scalaSpecial ctermfg=107 ctermbg=NONE cterm=NONE
      hi scalaOperator ctermfg=187 ctermbg=NONE cterm=NONE
      hi scalaTypeDeclaration ctermfg=214 ctermbg=NONE cterm=NONE
      hi scalaTypeTypePostDeclaration ctermfg=214 ctermbg=NONE cterm=NONE
      hi scalaInstanceDeclaration ctermfg=187 ctermbg=NONE cterm=NONE
      hi scalaInterpolation ctermfg=107 ctermbg=NONE cterm=NONE
      hi markdownItalic ctermfg=144 ctermbg=NONE cterm=italic
      hi markdownH1 ctermfg=142 ctermbg=NONE cterm=bold
      hi markdownH2 ctermfg=142 ctermbg=NONE cterm=bold
      hi markdownH3 ctermfg=214 ctermbg=NONE cterm=bold
      hi markdownH4 ctermfg=214 ctermbg=NONE cterm=bold
      hi markdownH5 ctermfg=214 ctermbg=NONE cterm=NONE
      hi markdownH6 ctermfg=214 ctermbg=NONE cterm=NONE
      hi markdownCode ctermfg=107 ctermbg=NONE cterm=NONE
      hi markdownCodeBlock ctermfg=107 ctermbg=NONE cterm=NONE
      hi markdownCodeDelimiter ctermfg=107 ctermbg=NONE cterm=NONE
      hi markdownBlockquote ctermfg=102 ctermbg=NONE cterm=NONE
      hi markdownListMarker ctermfg=102 ctermbg=NONE cterm=NONE
      hi markdownOrderedListMarker ctermfg=102 ctermbg=NONE cterm=NONE
      hi markdownRule ctermfg=102 ctermbg=NONE cterm=NONE
      hi markdownHeadingRule ctermfg=102 ctermbg=NONE cterm=NONE
      hi markdownUrlDelimiter ctermfg=144 ctermbg=NONE cterm=NONE
      hi markdownLinkDelimiter ctermfg=144 ctermbg=NONE cterm=NONE
      hi markdownLinkTextDelimiter ctermfg=144 ctermbg=NONE cterm=NONE
      hi markdownHeadingDelimiter ctermfg=208 ctermbg=NONE cterm=NONE
      hi markdownUrl ctermfg=175 ctermbg=NONE cterm=NONE
      hi markdownUrlTitleDelimiter ctermfg=142 ctermbg=NONE cterm=NONE
      hi markdownLinkText ctermfg=102 ctermbg=NONE cterm=underline
      hi! link markdownIdDeclaration markdownLinkText
      hi haskellType ctermfg=187 ctermbg=NONE cterm=NONE
      hi haskellIdentifier ctermfg=187 ctermbg=NONE cterm=NONE
      hi haskellSeparator ctermfg=187 ctermbg=NONE cterm=NONE
      hi haskellDelimiter ctermfg=137 ctermbg=NONE cterm=NONE
      hi haskellOperators ctermfg=109 ctermbg=NONE cterm=NONE
      hi haskellBacktick ctermfg=208 ctermbg=NONE cterm=NONE
      hi haskellStatement ctermfg=208 ctermbg=NONE cterm=NONE
      hi haskellConditional ctermfg=208 ctermbg=NONE cterm=NONE
      hi haskellLet ctermfg=107 ctermbg=NONE cterm=NONE
      hi haskellDefault ctermfg=107 ctermbg=NONE cterm=NONE
      hi haskellWhere ctermfg=107 ctermbg=NONE cterm=NONE
      hi haskellBottom ctermfg=107 ctermbg=NONE cterm=NONE
      hi haskellBlockKeywords ctermfg=107 ctermbg=NONE cterm=NONE
      hi haskellImportKeywords ctermfg=107 ctermbg=NONE cterm=NONE
      hi haskellDeclKeyword ctermfg=107 ctermbg=NONE cterm=NONE
      hi haskellDeriving ctermfg=107 ctermbg=NONE cterm=NONE
      hi haskellAssocType ctermfg=107 ctermbg=NONE cterm=NONE
      hi haskellNumber ctermfg=175 ctermbg=NONE cterm=NONE
      hi haskellPragma ctermfg=175 ctermbg=NONE cterm=NONE
      hi haskellString ctermfg=142 ctermbg=NONE cterm=NONE
      hi haskellChar ctermfg=142 ctermbg=NONE cterm=NONE
      hi jsonKeyword ctermfg=142 ctermbg=NONE cterm=NONE
      hi jsonQuote ctermfg=142 ctermbg=NONE cterm=NONE
      hi jsonBraces ctermfg=187 ctermbg=NONE cterm=NONE
      hi jsonString ctermfg=187 ctermbg=NONE cterm=NONE
      if !s:italics
        hi htmlBoldItalic cterm=bold
        hi htmlBoldUnderlineItalic cterm=bold,underline
        hi htmlUnderlineItalic cterm=underline
        hi htmlItalic cterm=NONE
        hi markdownItalic cterm=NONE
      endif
    endif
  else
    " Light background
    hi Terminal ctermfg=229 ctermbg=237 cterm=NONE
    if get(g:, 'gruvbox_transp_bg', 0)
      hi Normal ctermfg=237 ctermbg=NONE cterm=NONE
      hi CursorLineNr ctermfg=172 ctermbg=NONE cterm=NONE
      hi FoldColumn ctermfg=102 ctermbg=NONE cterm=NONE
      hi SignColumn ctermfg=237 ctermbg=NONE cterm=NONE
      hi VertSplit ctermfg=144 ctermbg=NONE cterm=NONE
    else
      hi Normal ctermfg=237 ctermbg=229 cterm=NONE
      hi CursorLineNr ctermfg=172 ctermbg=187 cterm=NONE
      hi FoldColumn ctermfg=102 ctermbg=187 cterm=NONE
      hi SignColumn ctermfg=237 ctermbg=187 cterm=NONE
      hi VertSplit ctermfg=144 ctermbg=229 cterm=NONE
    endif
    hi ColorColumn ctermfg=NONE ctermbg=187 cterm=NONE
    hi Comment ctermfg=102 ctermbg=NONE cterm=italic
    hi CursorLine ctermfg=NONE ctermbg=187 cterm=NONE
    hi Error ctermfg=124 ctermbg=229 cterm=bold,reverse
    hi ErrorMsg ctermfg=229 ctermbg=124 cterm=bold
    hi Folded ctermfg=102 ctermbg=187 cterm=italic
    hi LineNr ctermfg=137 ctermbg=NONE cterm=NONE
    hi MatchParen ctermfg=NONE ctermbg=187 cterm=bold,underline
    hi NonText ctermfg=187 ctermbg=NONE cterm=NONE
    hi Pmenu ctermfg=237 ctermbg=187 cterm=NONE
    hi PmenuSbar ctermfg=NONE ctermbg=187 cterm=NONE
    hi PmenuSel ctermfg=187 ctermbg=23 cterm=bold
    hi PmenuThumb ctermfg=NONE ctermbg=137 cterm=NONE
    hi SpecialKey ctermfg=102 ctermbg=NONE cterm=NONE
    hi StatusLine ctermfg=187 ctermbg=237 cterm=reverse
    hi StatusLineNC ctermfg=187 ctermbg=243 cterm=reverse
    hi TabLine ctermfg=137 ctermbg=187 cterm=NONE
    hi TabLineFill ctermfg=137 ctermbg=187 cterm=NONE
    hi TabLineSel ctermfg=100 ctermbg=187 cterm=NONE
    hi ToolbarButton ctermfg=235 ctermbg=144 cterm=bold
    hi ToolbarLine ctermfg=NONE ctermbg=144 cterm=NONE
    hi Visual ctermfg=NONE ctermbg=144 cterm=NONE
    hi WildMenu ctermfg=23 ctermbg=187 cterm=bold
    hi Conceal ctermfg=23 ctermbg=NONE cterm=NONE
    hi Cursor ctermfg=NONE ctermbg=NONE cterm=reverse
    hi DiffAdd ctermfg=100 ctermbg=229 cterm=reverse
    hi DiffChange ctermfg=29 ctermbg=229 cterm=reverse
    hi DiffDelete ctermfg=124 ctermbg=229 cterm=reverse
    hi DiffText ctermfg=172 ctermbg=229 cterm=reverse
    hi Directory ctermfg=100 ctermbg=NONE cterm=bold
    hi EndOfBuffer ctermfg=229 ctermbg=NONE cterm=NONE
    hi IncSearch ctermfg=124 ctermbg=229 cterm=reverse
    hi ModeMsg ctermfg=172 ctermbg=NONE cterm=bold
    hi MoreMsg ctermfg=172 ctermbg=NONE cterm=bold
    hi Question ctermfg=124 ctermbg=NONE cterm=bold
    hi Search ctermfg=172 ctermbg=229 cterm=reverse
    hi SpellBad ctermfg=124 ctermbg=NONE cterm=italic,underline
    hi SpellCap ctermfg=23 ctermbg=NONE cterm=italic,underline
    hi SpellLocal ctermfg=29 ctermbg=NONE cterm=italic,underline
    hi SpellRare ctermfg=126 ctermbg=NONE cterm=italic,underline
    hi Title ctermfg=100 ctermbg=NONE cterm=bold
    hi WarningMsg ctermfg=124 ctermbg=NONE cterm=bold
    hi Boolean ctermfg=126 ctermbg=NONE cterm=NONE
    hi Character ctermfg=126 ctermbg=NONE cterm=NONE
    hi Conditional ctermfg=124 ctermbg=NONE cterm=NONE
    hi Constant ctermfg=126 ctermbg=NONE cterm=NONE
    hi Define ctermfg=29 ctermbg=NONE cterm=NONE
    hi Debug ctermfg=124 ctermbg=NONE cterm=NONE
    hi Delimiter ctermfg=124 ctermbg=NONE cterm=NONE
    hi Error ctermfg=124 ctermbg=229 cterm=bold,reverse
    hi Exception ctermfg=124 ctermbg=NONE cterm=NONE
    hi Float ctermfg=126 ctermbg=NONE cterm=NONE
    hi Function ctermfg=100 ctermbg=NONE cterm=bold
    hi Identifier ctermfg=23 ctermbg=NONE cterm=NONE
    hi Ignore ctermfg=fg ctermbg=NONE cterm=NONE
    hi Include ctermfg=29 ctermbg=NONE cterm=NONE
    hi Keyword ctermfg=124 ctermbg=NONE cterm=NONE
    hi Label ctermfg=124 ctermbg=NONE cterm=NONE
    hi Macro ctermfg=29 ctermbg=NONE cterm=NONE
    hi Number ctermfg=126 ctermbg=NONE cterm=NONE
    hi Operator ctermfg=29 ctermbg=NONE cterm=NONE
    hi PreCondit ctermfg=29 ctermbg=NONE cterm=NONE
    hi PreProc ctermfg=29 ctermbg=NONE cterm=NONE
    hi Repeat ctermfg=124 ctermbg=NONE cterm=NONE
    hi SpecialChar ctermfg=124 ctermbg=NONE cterm=NONE
    hi SpecialComment ctermfg=124 ctermbg=NONE cterm=NONE
    hi Statement ctermfg=124 ctermbg=NONE cterm=NONE
    hi StorageClass ctermfg=124 ctermbg=NONE cterm=NONE
    hi Special ctermfg=124 ctermbg=NONE cterm=italic
    hi String ctermfg=100 ctermbg=NONE cterm=italic
    hi Structure ctermfg=29 ctermbg=NONE cterm=NONE
    hi Todo ctermfg=fg ctermbg=229 cterm=bold,italic
    hi Type ctermfg=172 ctermbg=NONE cterm=NONE
    hi Typedef ctermfg=172 ctermbg=NONE cterm=NONE
    hi Underlined ctermfg=23 ctermbg=NONE cterm=underline
    hi CursorIM ctermfg=NONE ctermbg=NONE cterm=reverse
    if !s:italics
      hi Comment cterm=NONE
      hi Folded cterm=NONE
      hi SpellBad cterm=underline
      hi SpellCap cterm=underline
      hi SpellLocal cterm=underline
      hi SpellRare cterm=underline
      hi Special cterm=NONE
      hi String cterm=NONE
      hi Todo cterm=bold
    endif
    if !get(g:, 'gruvbox_italicize_strings', 1)
      hi Special gui=NONE cterm=NONE
      hi String gui=NONE cterm=NONE
    endif
    hi NormalMode ctermfg=243 ctermbg=229 cterm=reverse
    hi InsertMode ctermfg=23 ctermbg=229 cterm=reverse
    hi ReplaceMode ctermfg=29 ctermbg=229 cterm=reverse
    hi VisualMode ctermfg=124 ctermbg=229 cterm=reverse
    hi CommandMode ctermfg=126 ctermbg=229 cterm=reverse
    hi Warnings ctermfg=124 ctermbg=229 cterm=reverse
    if has('nvim')
      hi! link TermCursor Cursor
      hi TermCursorNC ctermfg=187 ctermbg=237 cterm=NONE
    endif
    if get(g:, "gruvbox_plugin_hi_groups", 1)
      hi ALEError ctermfg=NONE ctermbg=NONE cterm=underline
      hi ALEWarning ctermfg=NONE ctermbg=NONE cterm=underline
      hi ALEInfo ctermfg=NONE ctermbg=NONE cterm=underline
      hi ALEErrorSign ctermfg=124 ctermbg=187 cterm=NONE
      hi ALEWarningSign ctermfg=172 ctermbg=187 cterm=NONE
      hi ALEInfoSign ctermfg=23 ctermbg=187 cterm=NONE
      hi BufTabLineCurrent ctermfg=229 ctermbg=243 cterm=NONE
      hi BufTabLineActive ctermfg=243 ctermbg=187 cterm=NONE
      hi BufTabLineHidden ctermfg=137 ctermbg=187 cterm=NONE
      hi BufTabLineFill ctermfg=229 ctermbg=229 cterm=NONE
      hi CocErrorSign ctermfg=124 ctermbg=187 cterm=NONE
      hi CocWarningSign ctermfg=124 ctermbg=187 cterm=NONE
      hi CocInfoSign ctermfg=172 ctermbg=187 cterm=NONE
      hi CocHintSign ctermfg=23 ctermbg=187 cterm=NONE
      hi CocErrorFloat ctermfg=124 ctermbg=NONE cterm=NONE
      hi CocWarningFloat ctermfg=124 ctermbg=NONE cterm=NONE
      hi CocInfoFloat ctermfg=172 ctermbg=NONE cterm=NONE
      hi CocHintFloat ctermfg=23 ctermbg=NONE cterm=NONE
      hi CtrlPMatch ctermfg=172 ctermbg=NONE cterm=NONE
      hi CtrlPNoEntries ctermfg=124 ctermbg=NONE cterm=NONE
      hi CtrlPPrtBase ctermfg=187 ctermbg=NONE cterm=NONE
      hi CtrlPPrtCursor ctermfg=23 ctermbg=NONE cterm=NONE
      hi CtrlPLinePre ctermfg=187 ctermbg=NONE cterm=NONE
      hi CtrlPMode1 ctermfg=23 ctermbg=187 cterm=bold
      hi CtrlPMode2 ctermfg=229 ctermbg=23 cterm=bold
      hi CtrlPStats ctermfg=243 ctermbg=187 cterm=bold
      hi DirvishPathTail ctermfg=29 ctermbg=NONE cterm=NONE
      hi DirvishArg ctermfg=172 ctermbg=NONE cterm=NONE
      hi! link EasyMotionTarget Search
      hi! link EasyMotionShade Comment
      hi gitcommitSelectedFile ctermfg=100 ctermbg=NONE cterm=NONE
      hi gitcommitDiscardedFile ctermfg=124 ctermbg=NONE cterm=NONE
      if get(g:, 'gruvbox_transp_bg', 0)
        hi GitGutterAdd ctermfg=100 ctermbg=NONE cterm=NONE
        hi GitGutterChange ctermfg=29 ctermbg=NONE cterm=NONE
        hi GitGutterDelete ctermfg=124 ctermbg=NONE cterm=NONE
        hi GitGutterChangeDelete ctermfg=29 ctermbg=NONE cterm=NONE
      else
        hi GitGutterAdd ctermfg=100 ctermbg=187 cterm=NONE
        hi GitGutterChange ctermfg=29 ctermbg=187 cterm=NONE
        hi GitGutterDelete ctermfg=124 ctermbg=187 cterm=NONE
        hi GitGutterChangeDelete ctermfg=29 ctermbg=187 cterm=NONE
      endif
      if get(g:, 'indent_guides_auto_colors', 0)
        if get(g:, 'gruvbox_invert_indent_guides', 0)
          hi IndentGuidesOdd ctermfg=229 ctermbg=187 cterm=reverse
          hi IndentGuidesEven ctermfg=229 ctermbg=187 cterm=reverse
        else
          hi IndentGuidesOdd ctermfg=229 ctermbg=187 cterm=NONE
          hi IndentGuidesEven ctermfg=229 ctermbg=187 cterm=NONE
        endif
      endif
      if !exists('g:indentLine_color_term')
        let g:indentLine_color_term = 187
      endif
      if !exists('g:indentLine_color_gui')
        let g:indentLine_color_gui = '#d5c4a1'
      endif
      hi LspDiagnosticsDefaultError ctermfg=124 ctermbg=NONE cterm=NONE
      hi LspDiagnosticsSignError ctermfg=124 ctermbg=187 cterm=NONE
      hi LspDiagnosticsUnderlineError ctermfg=NONE ctermbg=NONE cterm=NONE
      hi LspDiagnosticsDefaultWarning ctermfg=124 ctermbg=NONE cterm=NONE
      hi LspDiagnosticsSignWarning ctermfg=124 ctermbg=187 cterm=NONE
      hi LspDiagnosticsUnderlineWarning ctermfg=NONE ctermbg=NONE cterm=NONE
      hi LspDiagnosticsDefaultInformation ctermfg=172 ctermbg=NONE cterm=NONE
      hi LspDiagnosticsSignInformation ctermfg=172 ctermbg=187 cterm=NONE
      hi LspDiagnosticsUnderlineInformation ctermfg=NONE ctermbg=NONE cterm=NONE
      hi LspDiagnosticsDefaultHint ctermfg=23 ctermbg=NONE cterm=NONE
      hi LspDiagnosticsSignHint ctermfg=23 ctermbg=187 cterm=NONE
      hi LspDiagnosticsUnderlineHint ctermfg=NONE ctermbg=NONE cterm=NONE
      hi LanguageClientError ctermfg=124 ctermbg=NONE cterm=NONE
      hi LanguageClientErrorSign ctermfg=124 ctermbg=229 cterm=NONE
      hi LanguageClientWarning ctermfg=172 ctermbg=NONE cterm=NONE
      hi LanguageClientWarningSign ctermfg=172 ctermbg=187 cterm=NONE
      hi LangaugeClientInfo ctermfg=23 ctermbg=NONE cterm=NONE
      hi LanguageClientInfoSign ctermfg=23 ctermbg=187 cterm=NONE
      hi LanguageClientCodeLens ctermfg=23 ctermbg=NONE cterm=NONE
      hi NERDTreeDir ctermfg=29 ctermbg=NONE cterm=NONE
      hi NERDTreeDirSlash ctermfg=29 ctermbg=NONE cterm=NONE
      hi NERDTreeOpenable ctermfg=124 ctermbg=NONE cterm=NONE
      hi NERDTreeClosable ctermfg=124 ctermbg=NONE cterm=NONE
      hi NERDTreeFile ctermfg=237 ctermbg=NONE cterm=NONE
      hi NERDTreeExecFile ctermfg=172 ctermbg=NONE cterm=NONE
      hi NERDTreeUp ctermfg=102 ctermbg=NONE cterm=NONE
      hi NERDTreeCWD ctermfg=100 ctermbg=NONE cterm=NONE
      hi NERDTreeHelp ctermfg=237 ctermbg=NONE cterm=NONE
      hi NERDTreeToggleOn ctermfg=100 ctermbg=NONE cterm=NONE
      hi NERDTreeToggleOff ctermfg=124 ctermbg=NONE cterm=NONE
      hi netrwDir ctermfg=29 ctermbg=NONE cterm=NONE
      hi netrwClassify ctermfg=29 ctermbg=NONE cterm=NONE
      hi netrwLink ctermfg=102 ctermbg=NONE cterm=NONE
      hi netrwSymLink ctermfg=237 ctermbg=NONE cterm=NONE
      hi netrwExe ctermfg=172 ctermbg=NONE cterm=NONE
      hi netrwComment ctermfg=102 ctermbg=NONE cterm=NONE
      hi netrwList ctermfg=23 ctermbg=NONE cterm=NONE
      hi netrwHelpCmd ctermfg=29 ctermbg=NONE cterm=NONE
      hi netrwCmdSep ctermfg=59 ctermbg=NONE cterm=NONE
      hi netrwVersion ctermfg=100 ctermbg=NONE cterm=NONE
      " Rainbow Parentheses
      if !exists('g:rbpt_colorpairs')
        let g:rbpt_colorpairs = [['blue', '#458588'], ['magenta', '#b16286'],
              \ ['red', '#cc241d'], ['166', '#d65d0e']]
      endif

      let g:rainbow_guifgs = [ '#d65d0e', '#cc241d', '#b16286', '#458588' ]
      let g:rainbow_ctermfgs = [ '166', 'red', 'magenta', 'blue' ]

      if !exists('g:rainbow_conf')
        let g:rainbow_conf = {}
      endif
      if !has_key(g:rainbow_conf, 'guifgs')
        let g:rainbow_conf['guifgs'] = g:rainbow_guifgs
      endif
      if !has_key(g:rainbow_conf, 'ctermfgs')
        let g:rainbow_conf['ctermfgs'] = g:rainbow_ctermfgs
      endif

      let g:niji_dark_colours = g:rbpt_colorpairs
      let g:niji_light_colours = g:rbpt_colorpairs
      hi ShowMarksHLl ctermfg=23 ctermbg=187 cterm=NONE
      hi ShowMarksHLu ctermfg=23 ctermbg=187 cterm=NONE
      hi ShowMarksHLo ctermfg=23 ctermbg=187 cterm=NONE
      hi ShowMarksHLm ctermfg=23 ctermbg=187 cterm=NONE
      hi SignifySignAdd ctermfg=100 ctermbg=187 cterm=NONE
      hi SignifySignChange ctermfg=29 ctermbg=187 cterm=NONE
      hi SignifySignDelete ctermfg=124 ctermbg=187 cterm=NONE
      hi SignatureMarkText ctermfg=23 ctermbg=187 cterm=NONE
      hi SignatureMarkerText ctermfg=126 ctermbg=187 cterm=NONE
      hi StartifyBracket ctermfg=59 ctermbg=NONE cterm=NONE
      hi StartifyFile ctermfg=237 ctermbg=NONE cterm=NONE
      hi StartifyNumber ctermfg=23 ctermbg=NONE cterm=NONE
      hi StartifyPath ctermfg=102 ctermbg=NONE cterm=NONE
      hi StartifySlash ctermfg=102 ctermbg=NONE cterm=NONE
      hi StartifySection ctermfg=172 ctermbg=NONE cterm=NONE
      hi StartifySpecial ctermfg=187 ctermbg=NONE cterm=NONE
      hi StartifyHeader ctermfg=124 ctermbg=NONE cterm=NONE
      hi StartifyFooter ctermfg=187 ctermbg=NONE cterm=NONE
      hi SyntasticError ctermfg=NONE ctermbg=NONE cterm=underline
      hi SyntasticWarning ctermfg=NONE ctermbg=NONE cterm=underline
      hi SyntasticErrorSign ctermfg=124 ctermbg=187 cterm=NONE
      hi SyntasticWarningSign ctermfg=172 ctermbg=187 cterm=NONE
      hi multiple_cursors_cursor ctermfg=NONE ctermbg=NONE cterm=reverse
      hi multiple_cursors_visual ctermfg=NONE ctermbg=187 cterm=NONE
      let g:vimshell_escape_colors = [
            \ '#a89984', '#9d0006', '#79740e', '#b57614',
            \ '#076678', '#8f3f71', '#427b58', '#7c6f64',
            \ '#f9f5d7', '#9d0006', '#79740e', '#af3a03',
            \ '#076678', '#8f3f71', '#427b58', '#282828'
            \ ]
    endif
    if get(g:, "gruvbox_filetype_hi_groups", 1)
      hi diffAdded ctermfg=100 ctermbg=NONE cterm=NONE
      hi diffRemoved ctermfg=124 ctermbg=NONE cterm=NONE
      hi diffChanged ctermfg=29 ctermbg=NONE cterm=NONE
      hi diffFile ctermfg=124 ctermbg=NONE cterm=NONE
      hi diffNewFile ctermfg=172 ctermbg=NONE cterm=NONE
      hi diffLine ctermfg=23 ctermbg=NONE cterm=NONE
      hi htmlTag ctermfg=23 ctermbg=NONE cterm=NONE
      hi htmlEndTag ctermfg=23 ctermbg=NONE cterm=NONE
      hi htmlTagName ctermfg=29 ctermbg=NONE cterm=bold
      hi htmlArg ctermfg=29 ctermbg=NONE cterm=NONE
      hi htmlScriptTag ctermfg=126 ctermbg=NONE cterm=NONE
      hi htmlTagN ctermfg=237 ctermbg=NONE cterm=NONE
      hi htmlSpecialTagName ctermfg=29 ctermbg=NONE cterm=bold
      hi htmlLink ctermfg=243 ctermbg=NONE cterm=underline
      hi htmlSpecialChar ctermfg=124 ctermbg=NONE cterm=NONE
      hi htmlBold ctermfg=fg ctermbg=229 cterm=bold
      hi htmlBoldUnderline ctermfg=fg ctermbg=229 cterm=bold,underline
      hi htmlBoldItalic ctermfg=fg ctermbg=229 cterm=bold,italic
      hi htmlBoldUnderlineItalic ctermfg=fg ctermbg=229 cterm=bold,italic,underline
      hi htmlUnderline ctermfg=fg ctermbg=229 cterm=underline
      hi htmlUnderlineItalic ctermfg=fg ctermbg=229 cterm=italic,underline
      hi htmlItalic ctermfg=fg ctermbg=229 cterm=italic
      hi xmlTag ctermfg=23 ctermbg=NONE cterm=NONE
      hi xmlEndTag ctermfg=23 ctermbg=NONE cterm=NONE
      hi xmlTagName ctermfg=23 ctermbg=NONE cterm=NONE
      hi xmlEqual ctermfg=23 ctermbg=NONE cterm=NONE
      hi docbkKeyword ctermfg=29 ctermbg=NONE cterm=bold
      hi xmlDocTypeDecl ctermfg=102 ctermbg=NONE cterm=NONE
      hi xmlDocTypeKeyword ctermfg=126 ctermbg=NONE cterm=NONE
      hi xmlCdataStart ctermfg=102 ctermbg=NONE cterm=NONE
      hi xmlCdataCdata ctermfg=126 ctermbg=NONE cterm=NONE
      hi dtdFunction ctermfg=102 ctermbg=NONE cterm=NONE
      hi dtdTagName ctermfg=126 ctermbg=NONE cterm=NONE
      hi xmlAttrib ctermfg=29 ctermbg=NONE cterm=NONE
      hi xmlProcessingDelim ctermfg=102 ctermbg=NONE cterm=NONE
      hi dtdParamEntityPunct ctermfg=102 ctermbg=NONE cterm=NONE
      hi dtdParamEntityDPunct ctermfg=102 ctermbg=NONE cterm=NONE
      hi xmlAttribPunct ctermfg=102 ctermbg=NONE cterm=NONE
      hi xmlEntity ctermfg=124 ctermbg=NONE cterm=NONE
      hi xmlEntityPunct ctermfg=124 ctermbg=NONE cterm=NONE
      hi vimCommentTitle ctermfg=243 ctermbg=NONE cterm=bold
      hi vimNotation ctermfg=124 ctermbg=NONE cterm=NONE
      hi vimBracket ctermfg=124 ctermbg=NONE cterm=NONE
      hi vimMapModKey ctermfg=124 ctermbg=NONE cterm=NONE
      hi vimFuncSID ctermfg=59 ctermbg=NONE cterm=NONE
      hi vimSetSep ctermfg=59 ctermbg=NONE cterm=NONE
      hi vimSep ctermfg=59 ctermbg=NONE cterm=NONE
      hi vimContinue ctermfg=59 ctermbg=NONE cterm=NONE
      hi clojureKeyword ctermfg=23 ctermbg=NONE cterm=NONE
      hi clojureCond ctermfg=124 ctermbg=NONE cterm=NONE
      hi clojureSpecial ctermfg=124 ctermbg=NONE cterm=NONE
      hi clojureDefine ctermfg=124 ctermbg=NONE cterm=NONE
      hi clojureFunc ctermfg=172 ctermbg=NONE cterm=NONE
      hi clojureRepeat ctermfg=172 ctermbg=NONE cterm=NONE
      hi clojureCharacter ctermfg=29 ctermbg=NONE cterm=NONE
      hi clojureStringEscape ctermfg=29 ctermbg=NONE cterm=NONE
      hi clojureException ctermfg=124 ctermbg=NONE cterm=NONE
      hi clojureRegexp ctermfg=29 ctermbg=NONE cterm=NONE
      hi clojureRegexpEscape ctermfg=29 ctermbg=NONE cterm=NONE
      hi clojureRegexpCharClass ctermfg=59 ctermbg=NONE cterm=bold
      hi! link clojureRegexpMod clojureRegexpCharClass
      hi! link clojureRegexpQuantifier clojureRegexpCharClass
      hi clojureParen ctermfg=59 ctermbg=NONE cterm=NONE
      hi clojureAnonArg ctermfg=172 ctermbg=NONE cterm=NONE
      hi clojureVariable ctermfg=23 ctermbg=NONE cterm=NONE
      hi clojureMacro ctermfg=124 ctermbg=NONE cterm=NONE
      hi clojureMeta ctermfg=172 ctermbg=NONE cterm=NONE
      hi clojureDeref ctermfg=172 ctermbg=NONE cterm=NONE
      hi clojureQuote ctermfg=172 ctermbg=NONE cterm=NONE
      hi clojureUnquote ctermfg=172 ctermbg=NONE cterm=NONE
      hi cOperator ctermfg=126 ctermbg=NONE cterm=NONE
      hi cStructure ctermfg=124 ctermbg=NONE cterm=NONE
      hi pythonBuiltin ctermfg=124 ctermbg=NONE cterm=NONE
      hi pythonBuiltinObj ctermfg=124 ctermbg=NONE cterm=NONE
      hi pythonBuiltinFunc ctermfg=124 ctermbg=NONE cterm=NONE
      hi pythonFunction ctermfg=29 ctermbg=NONE cterm=NONE
      hi pythonDecorator ctermfg=124 ctermbg=NONE cterm=NONE
      hi pythonInclude ctermfg=23 ctermbg=NONE cterm=NONE
      hi pythonImport ctermfg=23 ctermbg=NONE cterm=NONE
      hi pythonRun ctermfg=23 ctermbg=NONE cterm=NONE
      hi pythonCoding ctermfg=23 ctermbg=NONE cterm=NONE
      hi pythonOperator ctermfg=124 ctermbg=NONE cterm=NONE
      hi pythonException ctermfg=124 ctermbg=NONE cterm=NONE
      hi pythonExceptions ctermfg=126 ctermbg=NONE cterm=NONE
      hi pythonBoolean ctermfg=126 ctermbg=NONE cterm=NONE
      hi pythonDot ctermfg=59 ctermbg=NONE cterm=NONE
      hi pythonConditional ctermfg=124 ctermbg=NONE cterm=NONE
      hi pythonRepeat ctermfg=124 ctermbg=NONE cterm=NONE
      hi pythonDottedName ctermfg=100 ctermbg=NONE cterm=bold
      hi cssBraces ctermfg=23 ctermbg=NONE cterm=NONE
      hi cssFunctionName ctermfg=172 ctermbg=NONE cterm=NONE
      hi cssIdentifier ctermfg=124 ctermbg=NONE cterm=NONE
      hi cssClassName ctermfg=100 ctermbg=NONE cterm=NONE
      hi cssColor ctermfg=23 ctermbg=NONE cterm=NONE
      hi cssSelectorOp ctermfg=23 ctermbg=NONE cterm=NONE
      hi cssSelectorOp2 ctermfg=23 ctermbg=NONE cterm=NONE
      hi cssImportant ctermfg=100 ctermbg=NONE cterm=NONE
      hi cssVendor ctermfg=237 ctermbg=NONE cterm=NONE
      hi cssTextProp ctermfg=29 ctermbg=NONE cterm=NONE
      hi cssAnimationProp ctermfg=29 ctermbg=NONE cterm=NONE
      hi cssUIProp ctermfg=172 ctermbg=NONE cterm=NONE
      hi cssTransformProp ctermfg=29 ctermbg=NONE cterm=NONE
      hi cssTransitionProp ctermfg=29 ctermbg=NONE cterm=NONE
      hi cssPrintProp ctermfg=29 ctermbg=NONE cterm=NONE
      hi cssPositioningProp ctermfg=172 ctermbg=NONE cterm=NONE
      hi cssBoxProp ctermfg=29 ctermbg=NONE cterm=NONE
      hi cssFontDescriptorProp ctermfg=29 ctermbg=NONE cterm=NONE
      hi cssFlexibleBoxProp ctermfg=29 ctermbg=NONE cterm=NONE
      hi cssBorderOutlineProp ctermfg=29 ctermbg=NONE cterm=NONE
      hi cssBackgroundProp ctermfg=29 ctermbg=NONE cterm=NONE
      hi cssMarginProp ctermfg=29 ctermbg=NONE cterm=NONE
      hi cssListProp ctermfg=29 ctermbg=NONE cterm=NONE
      hi cssTableProp ctermfg=29 ctermbg=NONE cterm=NONE
      hi cssFontProp ctermfg=29 ctermbg=NONE cterm=NONE
      hi cssPaddingProp ctermfg=29 ctermbg=NONE cterm=NONE
      hi cssDimensionProp ctermfg=29 ctermbg=NONE cterm=NONE
      hi cssRenderProp ctermfg=29 ctermbg=NONE cterm=NONE
      hi cssColorProp ctermfg=29 ctermbg=NONE cterm=NONE
      hi cssGeneratedContentProp ctermfg=29 ctermbg=NONE cterm=NONE
      hi javaScriptBraces ctermfg=237 ctermbg=NONE cterm=NONE
      hi javaScriptFunction ctermfg=29 ctermbg=NONE cterm=NONE
      hi javaScriptIdentifier ctermfg=124 ctermbg=NONE cterm=NONE
      hi javaScriptMember ctermfg=23 ctermbg=NONE cterm=NONE
      hi javaScriptNumber ctermfg=126 ctermbg=NONE cterm=NONE
      hi javaScriptNull ctermfg=126 ctermbg=NONE cterm=NONE
      hi javaScriptParens ctermfg=59 ctermbg=NONE cterm=NONE
      hi javascriptImport ctermfg=29 ctermbg=NONE cterm=NONE
      hi javascriptExport ctermfg=29 ctermbg=NONE cterm=NONE
      hi javascriptClassKeyword ctermfg=29 ctermbg=NONE cterm=NONE
      hi javascriptClassExtends ctermfg=29 ctermbg=NONE cterm=NONE
      hi javascriptDefault ctermfg=29 ctermbg=NONE cterm=NONE
      hi javascriptClassName ctermfg=172 ctermbg=NONE cterm=NONE
      hi javascriptClassSuperName ctermfg=172 ctermbg=NONE cterm=NONE
      hi javascriptGlobal ctermfg=172 ctermbg=NONE cterm=NONE
      hi javascriptEndColons ctermfg=237 ctermbg=NONE cterm=NONE
      hi javascriptFuncArg ctermfg=237 ctermbg=NONE cterm=NONE
      hi javascriptGlobalMethod ctermfg=237 ctermbg=NONE cterm=NONE
      hi javascriptNodeGlobal ctermfg=237 ctermbg=NONE cterm=NONE
      hi javascriptBOMWindowProp ctermfg=237 ctermbg=NONE cterm=NONE
      hi javascriptArrayMethod ctermfg=237 ctermbg=NONE cterm=NONE
      hi javascriptArrayStaticMethod ctermfg=237 ctermbg=NONE cterm=NONE
      hi javascriptCacheMethod ctermfg=237 ctermbg=NONE cterm=NONE
      hi javascriptDateMethod ctermfg=237 ctermbg=NONE cterm=NONE
      hi javascriptMathStaticMethod ctermfg=237 ctermbg=NONE cterm=NONE
      hi javascriptURLUtilsProp ctermfg=237 ctermbg=NONE cterm=NONE
      hi javascriptBOMNavigatorProp ctermfg=237 ctermbg=NONE cterm=NONE
      hi javascriptDOMDocMethod ctermfg=237 ctermbg=NONE cterm=NONE
      hi javascriptDOMDocProp ctermfg=237 ctermbg=NONE cterm=NONE
      hi javascriptBOMLocationMethod ctermfg=237 ctermbg=NONE cterm=NONE
      hi javascriptBOMWindowMethod ctermfg=237 ctermbg=NONE cterm=NONE
      hi javascriptStringMethod ctermfg=237 ctermbg=NONE cterm=NONE
      hi javascriptVariable ctermfg=124 ctermbg=NONE cterm=NONE
      hi javascriptIdentifier ctermfg=124 ctermbg=NONE cterm=NONE
      hi javascriptClassSuper ctermfg=124 ctermbg=NONE cterm=NONE
      hi javascriptFuncKeyword ctermfg=29 ctermbg=NONE cterm=NONE
      hi javascriptAsyncFunc ctermfg=29 ctermbg=NONE cterm=NONE
      hi javascriptClassStatic ctermfg=124 ctermbg=NONE cterm=NONE
      hi javascriptOperator ctermfg=124 ctermbg=NONE cterm=NONE
      hi javascriptForOperator ctermfg=124 ctermbg=NONE cterm=NONE
      hi javascriptYield ctermfg=124 ctermbg=NONE cterm=NONE
      hi javascriptExceptions ctermfg=124 ctermbg=NONE cterm=NONE
      hi javascriptMessage ctermfg=124 ctermbg=NONE cterm=NONE
      hi javascriptTemplateSB ctermfg=29 ctermbg=NONE cterm=NONE
      hi javascriptTemplateSubstitution ctermfg=237 ctermbg=NONE cterm=NONE
      hi javascriptLabel ctermfg=237 ctermbg=NONE cterm=NONE
      hi javascriptObjectLabel ctermfg=237 ctermbg=NONE cterm=NONE
      hi javascriptPropertyName ctermfg=237 ctermbg=NONE cterm=NONE
      hi javascriptLogicSymbols ctermfg=237 ctermbg=NONE cterm=NONE
      hi javascriptArrowFunc ctermfg=172 ctermbg=NONE cterm=NONE
      hi javascriptDocParamName ctermfg=243 ctermbg=NONE cterm=NONE
      hi javascriptDocTags ctermfg=243 ctermbg=NONE cterm=NONE
      hi javascriptDocNotation ctermfg=243 ctermbg=NONE cterm=NONE
      hi javascriptDocParamType ctermfg=243 ctermbg=NONE cterm=NONE
      hi javascriptDocNamedParamType ctermfg=243 ctermbg=NONE cterm=NONE
      hi javascriptBrackets ctermfg=237 ctermbg=NONE cterm=NONE
      hi javascriptDOMElemAttrs ctermfg=237 ctermbg=NONE cterm=NONE
      hi javascriptDOMEventMethod ctermfg=237 ctermbg=NONE cterm=NONE
      hi javascriptDOMNodeMethod ctermfg=237 ctermbg=NONE cterm=NONE
      hi javascriptDOMStorageMethod ctermfg=237 ctermbg=NONE cterm=NONE
      hi javascriptHeadersMethod ctermfg=237 ctermbg=NONE cterm=NONE
      hi javascriptAsyncFuncKeyword ctermfg=124 ctermbg=NONE cterm=NONE
      hi javascriptAwaitFuncKeyword ctermfg=124 ctermbg=NONE cterm=NONE
      hi jsImport ctermfg=124 ctermbg=NONE cterm=NONE
      hi jsExport ctermfg=124 ctermbg=NONE cterm=NONE
      hi jsFrom ctermfg=124 ctermbg=NONE cterm=NONE
      hi jsThis ctermfg=126 ctermbg=NONE cterm=NONE
      hi jsParen ctermfg=23 ctermbg=NONE cterm=NONE
      hi jsOperator ctermfg=29 ctermbg=NONE cterm=NONE
      hi jsSpreadOperator ctermfg=100 ctermbg=NONE cterm=NONE
      hi jsSpreadExpression ctermfg=23 ctermbg=NONE cterm=NONE
      hi jsClassKeyword ctermfg=124 ctermbg=NONE cterm=NONE
      hi jsClassProperty ctermfg=100 ctermbg=NONE cterm=NONE
      hi jsExtendsKeyword ctermfg=124 ctermbg=NONE cterm=NONE
      hi jsExportDefault ctermfg=124 ctermbg=NONE cterm=bold
      hi jsTemplateBraces ctermfg=29 ctermbg=NONE cterm=NONE
      hi jsGlobalNodeObjects ctermfg=237 ctermbg=NONE cterm=NONE
      hi jsGlobalObjects ctermfg=237 ctermbg=NONE cterm=NONE
      hi jsFunction ctermfg=100 ctermbg=NONE cterm=NONE
      hi jsFuncParens ctermfg=126 ctermbg=NONE cterm=NONE
      hi jsFuncBlock ctermfg=23 ctermbg=NONE cterm=NONE
      hi jsParens ctermfg=59 ctermbg=NONE cterm=NONE
      hi jsNull ctermfg=126 ctermbg=NONE cterm=NONE
      hi jsUndefined ctermfg=126 ctermbg=NONE cterm=NONE
      hi jsClassDefinition ctermfg=172 ctermbg=NONE cterm=NONE
      hi jsFunctionKey ctermfg=100 ctermbg=NONE cterm=NONE
      hi jsBracket ctermfg=124 ctermbg=NONE cterm=NONE
      hi jsObjectColon ctermfg=124 ctermbg=NONE cterm=NONE
      hi jsObjectProp ctermfg=23 ctermbg=NONE cterm=NONE
      hi jsFuncBraces ctermfg=100 ctermbg=NONE cterm=NONE
      hi jsVariableDef ctermfg=172 ctermbg=NONE cterm=NONE
      hi jsObjectValue ctermfg=23 ctermbg=NONE cterm=NONE
      hi jsDestructuringBlock ctermfg=172 ctermbg=NONE cterm=NONE
      hi jsParenIfElse ctermfg=23 ctermbg=NONE cterm=NONE
      hi jsClassBlock ctermfg=23 ctermbg=NONE cterm=NONE
      hi jsFutureKeys ctermfg=124 ctermbg=NONE cterm=bold
      hi jsStorageClass ctermfg=124 ctermbg=NONE cterm=NONE
      hi jsModuleKeyword ctermfg=23 ctermbg=NONE cterm=NONE
      hi jsObjectShorthandProp ctermfg=23 ctermbg=NONE cterm=NONE
      hi jsxRegion ctermfg=23 ctermbg=NONE cterm=NONE
      hi jsxTagName ctermfg=23 ctermbg=NONE cterm=NONE
      hi jsxComponentName ctermfg=172 ctermbg=NONE cterm=NONE
      hi jsxEscapeJsAttributes ctermfg=23 ctermbg=NONE cterm=NONE
      hi jsxEscapeJsContent ctermfg=23 ctermbg=NONE cterm=NONE
      hi jsxAttrib ctermfg=172 ctermbg=NONE cterm=NONE
      hi jsxAttributeBraces ctermfg=237 ctermbg=NONE cterm=NONE
      hi jsxEqual ctermfg=29 ctermbg=NONE cterm=NONE
      hi jsxString ctermfg=100 ctermbg=NONE cterm=NONE
      hi jsxCloseTag ctermfg=23 ctermbg=NONE cterm=NONE
      hi jsxEndTag ctermfg=23 ctermbg=NONE cterm=NONE
      hi jsxEndString ctermfg=23 ctermbg=NONE cterm=NONE
      hi jsxCloseString ctermfg=23 ctermbg=NONE cterm=NONE
      hi jsxIfOperator ctermfg=29 ctermbg=NONE cterm=NONE
      hi jsxElseOperator ctermfg=29 ctermbg=NONE cterm=NONE
      hi jsxDot ctermfg=237 ctermbg=NONE cterm=NONE
      hi jsxNamespace ctermfg=23 ctermbg=NONE cterm=NONE
      hi jsxPunct ctermfg=29 ctermbg=NONE cterm=NONE
      hi typeScriptReserved ctermfg=29 ctermbg=NONE cterm=NONE
      hi typeScriptLabel ctermfg=29 ctermbg=NONE cterm=NONE
      hi typeScriptFuncKeyword ctermfg=29 ctermbg=NONE cterm=NONE
      hi typeScriptIdentifier ctermfg=124 ctermbg=NONE cterm=NONE
      hi typeScriptBraces ctermfg=237 ctermbg=NONE cterm=NONE
      hi typeScriptEndColons ctermfg=237 ctermbg=NONE cterm=NONE
      hi typeScriptDOMObjects ctermfg=237 ctermbg=NONE cterm=NONE
      hi typeScriptAjaxMethods ctermfg=237 ctermbg=NONE cterm=NONE
      hi typeScriptLogicSymbols ctermfg=237 ctermbg=NONE cterm=NONE
      hi! link typeScriptDocSeeTag Comment
      hi! link typeScriptDocParam Comment
      hi! link typeScriptDocTags vimCommentTitle
      hi typeScriptGlobalObjects ctermfg=237 ctermbg=NONE cterm=NONE
      hi typeScriptParens ctermfg=59 ctermbg=NONE cterm=NONE
      hi typeScriptOpSymbols ctermfg=59 ctermbg=NONE cterm=NONE
      hi typeScriptHtmlElemProperties ctermfg=237 ctermbg=NONE cterm=NONE
      hi typeScriptNull ctermfg=126 ctermbg=NONE cterm=NONE
      hi typeScriptInterpolationDelimiter ctermfg=29 ctermbg=NONE cterm=NONE
      hi purescriptModuleKeyword ctermfg=29 ctermbg=NONE cterm=NONE
      hi purescriptModuleName ctermfg=237 ctermbg=NONE cterm=NONE
      hi purescriptWhere ctermfg=29 ctermbg=NONE cterm=NONE
      hi purescriptDelimiter ctermfg=243 ctermbg=NONE cterm=NONE
      hi purescriptType ctermfg=237 ctermbg=NONE cterm=NONE
      hi purescriptImportKeyword ctermfg=29 ctermbg=NONE cterm=NONE
      hi purescriptHidingKeyword ctermfg=29 ctermbg=NONE cterm=NONE
      hi purescriptAsKeyword ctermfg=29 ctermbg=NONE cterm=NONE
      hi purescriptStructure ctermfg=29 ctermbg=NONE cterm=NONE
      hi purescriptOperator ctermfg=23 ctermbg=NONE cterm=NONE
      hi purescriptTypeVar ctermfg=237 ctermbg=NONE cterm=NONE
      hi purescriptConstructor ctermfg=237 ctermbg=NONE cterm=NONE
      hi purescriptFunction ctermfg=237 ctermbg=NONE cterm=NONE
      hi purescriptConditional ctermfg=124 ctermbg=NONE cterm=NONE
      hi purescriptBacktick ctermfg=124 ctermbg=NONE cterm=NONE
      hi coffeeExtendedOp ctermfg=59 ctermbg=NONE cterm=NONE
      hi coffeeSpecialOp ctermfg=59 ctermbg=NONE cterm=NONE
      hi coffeeCurly ctermfg=124 ctermbg=NONE cterm=NONE
      hi coffeeParen ctermfg=59 ctermbg=NONE cterm=NONE
      hi coffeeBracket ctermfg=124 ctermbg=NONE cterm=NONE
      hi rubyStringDelimiter ctermfg=100 ctermbg=NONE cterm=NONE
      hi rubyInterpolationDelimiter ctermfg=29 ctermbg=NONE cterm=NONE
      hi objcTypeModifier ctermfg=124 ctermbg=NONE cterm=NONE
      hi objcDirective ctermfg=23 ctermbg=NONE cterm=NONE
      hi goDirective ctermfg=29 ctermbg=NONE cterm=NONE
      hi goConstants ctermfg=126 ctermbg=NONE cterm=NONE
      hi goDeclaration ctermfg=124 ctermbg=NONE cterm=NONE
      hi goDeclType ctermfg=23 ctermbg=NONE cterm=NONE
      hi goBuiltins ctermfg=124 ctermbg=NONE cterm=NONE
      hi luaIn ctermfg=124 ctermbg=NONE cterm=NONE
      hi luaFunction ctermfg=29 ctermbg=NONE cterm=NONE
      hi luaTable ctermfg=124 ctermbg=NONE cterm=NONE
      hi moonSpecialOp ctermfg=59 ctermbg=NONE cterm=NONE
      hi moonExtendedOp ctermfg=59 ctermbg=NONE cterm=NONE
      hi moonFunction ctermfg=59 ctermbg=NONE cterm=NONE
      hi moonObject ctermfg=172 ctermbg=NONE cterm=NONE
      hi javaAnnotation ctermfg=23 ctermbg=NONE cterm=NONE
      hi javaDocTags ctermfg=29 ctermbg=NONE cterm=NONE
      hi! link javaCommentTitle vimCommentTitle
      hi javaParen ctermfg=59 ctermbg=NONE cterm=NONE
      hi javaParen1 ctermfg=59 ctermbg=NONE cterm=NONE
      hi javaParen2 ctermfg=59 ctermbg=NONE cterm=NONE
      hi javaParen3 ctermfg=59 ctermbg=NONE cterm=NONE
      hi javaParen4 ctermfg=59 ctermbg=NONE cterm=NONE
      hi javaParen5 ctermfg=59 ctermbg=NONE cterm=NONE
      hi javaOperator ctermfg=124 ctermbg=NONE cterm=NONE
      hi javaVarArg ctermfg=100 ctermbg=NONE cterm=NONE
      hi! link elixirDocString Comment
      hi elixirStringDelimiter ctermfg=100 ctermbg=NONE cterm=NONE
      hi elixirInterpolationDelimiter ctermfg=29 ctermbg=NONE cterm=NONE
      hi elixirModuleDeclaration ctermfg=172 ctermbg=NONE cterm=NONE
      hi scalaNameDefinition ctermfg=237 ctermbg=NONE cterm=NONE
      hi scalaCaseFollowing ctermfg=237 ctermbg=NONE cterm=NONE
      hi scalaCapitalWord ctermfg=237 ctermbg=NONE cterm=NONE
      hi scalaTypeExtension ctermfg=237 ctermbg=NONE cterm=NONE
      hi scalaKeyword ctermfg=124 ctermbg=NONE cterm=NONE
      hi scalaKeywordModifier ctermfg=124 ctermbg=NONE cterm=NONE
      hi scalaSpecial ctermfg=29 ctermbg=NONE cterm=NONE
      hi scalaOperator ctermfg=237 ctermbg=NONE cterm=NONE
      hi scalaTypeDeclaration ctermfg=172 ctermbg=NONE cterm=NONE
      hi scalaTypeTypePostDeclaration ctermfg=172 ctermbg=NONE cterm=NONE
      hi scalaInstanceDeclaration ctermfg=237 ctermbg=NONE cterm=NONE
      hi scalaInterpolation ctermfg=29 ctermbg=NONE cterm=NONE
      hi markdownItalic ctermfg=59 ctermbg=NONE cterm=italic
      hi markdownH1 ctermfg=100 ctermbg=NONE cterm=bold
      hi markdownH2 ctermfg=100 ctermbg=NONE cterm=bold
      hi markdownH3 ctermfg=172 ctermbg=NONE cterm=bold
      hi markdownH4 ctermfg=172 ctermbg=NONE cterm=bold
      hi markdownH5 ctermfg=172 ctermbg=NONE cterm=NONE
      hi markdownH6 ctermfg=172 ctermbg=NONE cterm=NONE
      hi markdownCode ctermfg=29 ctermbg=NONE cterm=NONE
      hi markdownCodeBlock ctermfg=29 ctermbg=NONE cterm=NONE
      hi markdownCodeDelimiter ctermfg=29 ctermbg=NONE cterm=NONE
      hi markdownBlockquote ctermfg=102 ctermbg=NONE cterm=NONE
      hi markdownListMarker ctermfg=102 ctermbg=NONE cterm=NONE
      hi markdownOrderedListMarker ctermfg=102 ctermbg=NONE cterm=NONE
      hi markdownRule ctermfg=102 ctermbg=NONE cterm=NONE
      hi markdownHeadingRule ctermfg=102 ctermbg=NONE cterm=NONE
      hi markdownUrlDelimiter ctermfg=59 ctermbg=NONE cterm=NONE
      hi markdownLinkDelimiter ctermfg=59 ctermbg=NONE cterm=NONE
      hi markdownLinkTextDelimiter ctermfg=59 ctermbg=NONE cterm=NONE
      hi markdownHeadingDelimiter ctermfg=124 ctermbg=NONE cterm=NONE
      hi markdownUrl ctermfg=126 ctermbg=NONE cterm=NONE
      hi markdownUrlTitleDelimiter ctermfg=100 ctermbg=NONE cterm=NONE
      hi markdownLinkText ctermfg=102 ctermbg=NONE cterm=underline
      hi! link markdownIdDeclaration markdownLinkText
      hi haskellType ctermfg=237 ctermbg=NONE cterm=NONE
      hi haskellIdentifier ctermfg=237 ctermbg=NONE cterm=NONE
      hi haskellSeparator ctermfg=237 ctermbg=NONE cterm=NONE
      hi haskellDelimiter ctermfg=243 ctermbg=NONE cterm=NONE
      hi haskellOperators ctermfg=23 ctermbg=NONE cterm=NONE
      hi haskellBacktick ctermfg=124 ctermbg=NONE cterm=NONE
      hi haskellStatement ctermfg=124 ctermbg=NONE cterm=NONE
      hi haskellConditional ctermfg=124 ctermbg=NONE cterm=NONE
      hi haskellLet ctermfg=29 ctermbg=NONE cterm=NONE
      hi haskellDefault ctermfg=29 ctermbg=NONE cterm=NONE
      hi haskellWhere ctermfg=29 ctermbg=NONE cterm=NONE
      hi haskellBottom ctermfg=29 ctermbg=NONE cterm=NONE
      hi haskellBlockKeywords ctermfg=29 ctermbg=NONE cterm=NONE
      hi haskellImportKeywords ctermfg=29 ctermbg=NONE cterm=NONE
      hi haskellDeclKeyword ctermfg=29 ctermbg=NONE cterm=NONE
      hi haskellDeriving ctermfg=29 ctermbg=NONE cterm=NONE
      hi haskellAssocType ctermfg=29 ctermbg=NONE cterm=NONE
      hi haskellNumber ctermfg=126 ctermbg=NONE cterm=NONE
      hi haskellPragma ctermfg=126 ctermbg=NONE cterm=NONE
      hi haskellString ctermfg=100 ctermbg=NONE cterm=NONE
      hi haskellChar ctermfg=100 ctermbg=NONE cterm=NONE
      hi jsonKeyword ctermfg=100 ctermbg=NONE cterm=NONE
      hi jsonQuote ctermfg=100 ctermbg=NONE cterm=NONE
      hi jsonBraces ctermfg=237 ctermbg=NONE cterm=NONE
      hi jsonString ctermfg=237 ctermbg=NONE cterm=NONE
      if !s:italics
        hi htmlBoldItalic cterm=bold
        hi htmlBoldUnderlineItalic cterm=bold,underline
        hi htmlUnderlineItalic cterm=underline
        hi htmlItalic cterm=NONE
        hi markdownItalic cterm=NONE
      endif
    endif
  endif
  unlet s:t_Co s:italics
  finish
endif

if s:t_Co >= 16
  if &background ==# 'dark'
    hi Terminal ctermfg=White ctermbg=Black cterm=NONE
    if get(g:, 'gruvbox_transp_bg', 0)
      hi Normal ctermfg=White ctermbg=NONE cterm=NONE
    else
      hi Normal ctermfg=White ctermbg=Black cterm=NONE
    endif
    hi ColorColumn ctermfg=Black ctermbg=DarkGray cterm=NONE
    hi Comment ctermfg=DarkGray ctermbg=NONE cterm=italic
    hi CursorLine ctermfg=NONE ctermbg=NONE cterm=underline
    hi CursorLineNr ctermfg=Yellow ctermbg=NONE cterm=NONE
    hi Error ctermfg=Red ctermbg=Black cterm=reverse
    hi ErrorMsg ctermfg=Black ctermbg=Red cterm=NONE
    hi FoldColumn ctermfg=DarkGray ctermbg=NONE cterm=NONE
    hi Folded ctermfg=DarkGray ctermbg=NONE cterm=italic
    hi LineNr ctermfg=DarkGray ctermbg=NONE cterm=NONE
    hi MatchParen ctermfg=NONE ctermbg=Black cterm=bold,underline
    hi NonText ctermfg=DarkGray ctermbg=NONE cterm=NONE
    hi Pmenu ctermfg=Black ctermbg=DarkGray cterm=NONE
    hi PmenuSbar ctermfg=NONE ctermbg=DarkGray cterm=NONE
    hi PmenuSel ctermfg=Black ctermbg=Blue cterm=NONE
    hi PmenuThumb ctermfg=NONE ctermbg=Blue cterm=NONE
    hi SignColumn ctermfg=DarkGray ctermbg=NONE cterm=NONE
    hi SpecialKey ctermfg=DarkGray ctermbg=NONE cterm=NONE
    hi StatusLine ctermfg=DarkGray ctermbg=White cterm=reverse
    hi StatusLineNC ctermfg=DarkGray ctermbg=Black cterm=reverse
    hi TabLine ctermfg=Black ctermbg=DarkGray cterm=NONE
    hi TabLineFill ctermfg=Black ctermbg=DarkGray cterm=NONE
    hi TabLineSel ctermfg=DarkGray ctermbg=Black cterm=underline
    hi ToolbarButton ctermfg=White ctermbg=DarkGray cterm=bold
    hi ToolbarLine ctermfg=NONE ctermbg=DarkGray cterm=NONE
    hi VertSplit ctermfg=Black ctermbg=DarkGray cterm=NONE
    hi Visual ctermfg=Black ctermbg=DarkGray cterm=NONE
    hi WildMenu ctermfg=White ctermbg=Black cterm=bold
    hi Conceal ctermfg=Blue ctermbg=NONE cterm=NONE
    hi Cursor ctermfg=NONE ctermbg=NONE cterm=reverse
    hi DiffAdd ctermfg=Green ctermbg=Black cterm=reverse
    hi DiffChange ctermfg=Cyan ctermbg=Black cterm=reverse
    hi DiffDelete ctermfg=Red ctermbg=Black cterm=reverse
    hi DiffText ctermfg=Yellow ctermbg=Black cterm=reverse
    hi Directory ctermfg=Green ctermbg=NONE cterm=bold
    hi EndOfBuffer ctermfg=Black ctermbg=NONE cterm=NONE
    hi IncSearch ctermfg=Magenta ctermbg=Black cterm=reverse
    hi ModeMsg ctermfg=Yellow ctermbg=NONE cterm=bold
    hi MoreMsg ctermfg=Yellow ctermbg=NONE cterm=bold
    hi Question ctermfg=Magenta ctermbg=NONE cterm=bold
    hi Search ctermfg=Yellow ctermbg=Black cterm=reverse
    hi SpellBad ctermfg=Red ctermbg=NONE cterm=italic,underline
    hi SpellCap ctermfg=Blue ctermbg=NONE cterm=italic,underline
    hi SpellLocal ctermfg=Cyan ctermbg=NONE cterm=italic,underline
    hi SpellRare ctermfg=Magenta ctermbg=NONE cterm=italic,underline
    hi Title ctermfg=Green ctermbg=NONE cterm=bold
    hi WarningMsg ctermfg=Red ctermbg=NONE cterm=bold
    hi Boolean ctermfg=Magenta ctermbg=NONE cterm=NONE
    hi Character ctermfg=Magenta ctermbg=NONE cterm=NONE
    hi Conditional ctermfg=Red ctermbg=NONE cterm=NONE
    hi Constant ctermfg=Magenta ctermbg=NONE cterm=NONE
    hi Define ctermfg=Cyan ctermbg=NONE cterm=NONE
    hi Debug ctermfg=Red ctermbg=NONE cterm=NONE
    hi Delimiter ctermfg=Magenta ctermbg=NONE cterm=NONE
    hi Error ctermfg=Red ctermbg=Black cterm=bold,reverse
    hi Exception ctermfg=Red ctermbg=NONE cterm=NONE
    hi Float ctermfg=Magenta ctermbg=NONE cterm=NONE
    hi Function ctermfg=Green ctermbg=NONE cterm=bold
    hi Identifier ctermfg=Blue ctermbg=NONE cterm=NONE
    hi Ignore ctermfg=fg ctermbg=NONE cterm=NONE
    hi Include ctermfg=Cyan ctermbg=NONE cterm=NONE
    hi Keyword ctermfg=Red ctermbg=NONE cterm=NONE
    hi Label ctermfg=Red ctermbg=NONE cterm=NONE
    hi Macro ctermfg=Cyan ctermbg=NONE cterm=NONE
    hi Number ctermfg=Magenta ctermbg=NONE cterm=NONE
    hi Operator ctermfg=Cyan ctermbg=NONE cterm=NONE
    hi PreCondit ctermfg=Cyan ctermbg=NONE cterm=NONE
    hi PreProc ctermfg=Cyan ctermbg=NONE cterm=NONE
    hi Repeat ctermfg=Red ctermbg=NONE cterm=NONE
    hi SpecialChar ctermfg=Red ctermbg=NONE cterm=NONE
    hi SpecialComment ctermfg=Red ctermbg=NONE cterm=NONE
    hi Statement ctermfg=Red ctermbg=NONE cterm=NONE
    hi StorageClass ctermfg=Magenta ctermbg=NONE cterm=NONE
    hi Special ctermfg=Magenta ctermbg=NONE cterm=italic
    hi String ctermfg=Green ctermbg=NONE cterm=italic
    hi Structure ctermfg=Cyan ctermbg=NONE cterm=NONE
    hi Todo ctermfg=fg ctermbg=Black cterm=bold,italic
    hi Type ctermfg=Yellow ctermbg=NONE cterm=NONE
    hi Typedef ctermfg=Yellow ctermbg=NONE cterm=NONE
    hi Underlined ctermfg=Blue ctermbg=NONE cterm=underline
    hi CursorIM ctermfg=NONE ctermbg=NONE cterm=reverse
    if !s:italics
      hi Comment cterm=NONE
      hi Folded cterm=NONE
      hi SpellBad cterm=underline
      hi SpellCap cterm=underline
      hi SpellLocal cterm=underline
      hi SpellRare cterm=underline
      hi Special cterm=NONE
      hi String cterm=NONE
      hi Todo cterm=bold
    endif
    if !get(g:, 'gruvbox_italicize_strings', 1)
      hi Special gui=NONE cterm=NONE
      hi String gui=NONE cterm=NONE
    endif
    hi NormalMode ctermfg=Gray ctermbg=Black cterm=reverse
    hi InsertMode ctermfg=Blue ctermbg=Black cterm=reverse
    hi ReplaceMode ctermfg=Cyan ctermbg=Black cterm=reverse
    hi VisualMode ctermfg=Magenta ctermbg=Black cterm=reverse
    hi CommandMode ctermfg=Magenta ctermbg=Black cterm=reverse
    hi Warnings ctermfg=Magenta ctermbg=Black cterm=reverse
    if has('nvim')
      hi! link TermCursor Cursor
      hi TermCursorNC ctermfg=DarkGray ctermbg=White cterm=NONE
    endif
  else
    " Light background
    hi Terminal ctermfg=White ctermbg=Black cterm=NONE
    if get(g:, 'gruvbox_transp_bg', 0)
      hi Normal ctermfg=Black ctermbg=NONE cterm=NONE
    else
      hi Normal ctermfg=Black ctermbg=White cterm=NONE
    endif
    hi ColorColumn ctermfg=White ctermbg=Grey cterm=NONE
    hi Comment ctermfg=DarkGray ctermbg=NONE cterm=italic
    hi CursorLine ctermfg=NONE ctermbg=NONE cterm=underline
    hi CursorLineNr ctermfg=Yellow ctermbg=NONE cterm=NONE
    hi Error ctermfg=Red ctermbg=White cterm=reverse
    hi ErrorMsg ctermfg=White ctermbg=Red cterm=NONE
    hi FoldColumn ctermfg=Grey ctermbg=NONE cterm=NONE
    hi Folded ctermfg=Grey ctermbg=NONE cterm=italic
    hi LineNr ctermfg=Grey ctermbg=NONE cterm=NONE
    hi MatchParen ctermfg=NONE ctermbg=White cterm=bold,underline
    hi NonText ctermfg=Grey ctermbg=NONE cterm=NONE
    hi Pmenu ctermfg=White ctermbg=Grey cterm=NONE
    hi PmenuSbar ctermfg=NONE ctermbg=Grey cterm=NONE
    hi PmenuSel ctermfg=White ctermbg=Blue cterm=NONE
    hi PmenuThumb ctermfg=NONE ctermbg=Blue cterm=NONE
    hi SignColumn ctermfg=Grey ctermbg=NONE cterm=NONE
    hi SpecialKey ctermfg=Grey ctermbg=NONE cterm=NONE
    hi StatusLine ctermfg=Grey ctermbg=Black cterm=reverse
    hi StatusLineNC ctermfg=Grey ctermbg=White cterm=reverse
    hi TabLine ctermfg=White ctermbg=Grey cterm=NONE
    hi TabLineFill ctermfg=White ctermbg=Grey cterm=NONE
    hi TabLineSel ctermfg=Grey ctermbg=White cterm=underline
    hi ToolbarButton ctermfg=Black ctermbg=Grey cterm=bold
    hi ToolbarLine ctermfg=NONE ctermbg=Grey cterm=NONE
    hi VertSplit ctermfg=White ctermbg=Grey cterm=NONE
    hi Visual ctermfg=White ctermbg=Grey cterm=NONE
    hi WildMenu ctermfg=Black ctermbg=White cterm=bold
    hi Conceal ctermfg=Blue ctermbg=NONE cterm=NONE
    hi Cursor ctermfg=NONE ctermbg=NONE cterm=reverse
    hi DiffAdd ctermfg=Green ctermbg=White cterm=reverse
    hi DiffChange ctermfg=Cyan ctermbg=White cterm=reverse
    hi DiffDelete ctermfg=Red ctermbg=White cterm=reverse
    hi DiffText ctermfg=Yellow ctermbg=White cterm=reverse
    hi Directory ctermfg=Green ctermbg=NONE cterm=bold
    hi EndOfBuffer ctermfg=White ctermbg=NONE cterm=NONE
    hi IncSearch ctermfg=Magenta ctermbg=White cterm=reverse
    hi ModeMsg ctermfg=Yellow ctermbg=NONE cterm=bold
    hi MoreMsg ctermfg=Yellow ctermbg=NONE cterm=bold
    hi Question ctermfg=Magenta ctermbg=NONE cterm=bold
    hi Search ctermfg=Yellow ctermbg=White cterm=reverse
    hi SpellBad ctermfg=Red ctermbg=NONE cterm=italic,underline
    hi SpellCap ctermfg=Blue ctermbg=NONE cterm=italic,underline
    hi SpellLocal ctermfg=Cyan ctermbg=NONE cterm=italic,underline
    hi SpellRare ctermfg=Magenta ctermbg=NONE cterm=italic,underline
    hi Title ctermfg=Green ctermbg=NONE cterm=bold
    hi WarningMsg ctermfg=Red ctermbg=NONE cterm=bold
    hi Boolean ctermfg=Magenta ctermbg=NONE cterm=NONE
    hi Character ctermfg=Magenta ctermbg=NONE cterm=NONE
    hi Conditional ctermfg=Red ctermbg=NONE cterm=NONE
    hi Constant ctermfg=Magenta ctermbg=NONE cterm=NONE
    hi Define ctermfg=Cyan ctermbg=NONE cterm=NONE
    hi Debug ctermfg=Red ctermbg=NONE cterm=NONE
    hi Delimiter ctermfg=Magenta ctermbg=NONE cterm=NONE
    hi Error ctermfg=Red ctermbg=White cterm=bold,reverse
    hi Exception ctermfg=Red ctermbg=NONE cterm=NONE
    hi Float ctermfg=Magenta ctermbg=NONE cterm=NONE
    hi Function ctermfg=Green ctermbg=NONE cterm=bold
    hi Identifier ctermfg=Blue ctermbg=NONE cterm=NONE
    hi Ignore ctermfg=fg ctermbg=NONE cterm=NONE
    hi Include ctermfg=Cyan ctermbg=NONE cterm=NONE
    hi Keyword ctermfg=Red ctermbg=NONE cterm=NONE
    hi Label ctermfg=Red ctermbg=NONE cterm=NONE
    hi Macro ctermfg=Cyan ctermbg=NONE cterm=NONE
    hi Number ctermfg=Magenta ctermbg=NONE cterm=NONE
    hi Operator ctermfg=Cyan ctermbg=NONE cterm=NONE
    hi PreCondit ctermfg=Cyan ctermbg=NONE cterm=NONE
    hi PreProc ctermfg=Cyan ctermbg=NONE cterm=NONE
    hi Repeat ctermfg=Red ctermbg=NONE cterm=NONE
    hi SpecialChar ctermfg=Red ctermbg=NONE cterm=NONE
    hi SpecialComment ctermfg=Red ctermbg=NONE cterm=NONE
    hi Statement ctermfg=Red ctermbg=NONE cterm=NONE
    hi StorageClass ctermfg=Magenta ctermbg=NONE cterm=NONE
    hi Special ctermfg=Magenta ctermbg=NONE cterm=italic
    hi String ctermfg=Green ctermbg=NONE cterm=italic
    hi Structure ctermfg=Cyan ctermbg=NONE cterm=NONE
    hi Todo ctermfg=fg ctermbg=White cterm=bold,italic
    hi Type ctermfg=Yellow ctermbg=NONE cterm=NONE
    hi Typedef ctermfg=Yellow ctermbg=NONE cterm=NONE
    hi Underlined ctermfg=Blue ctermbg=NONE cterm=underline
    hi CursorIM ctermfg=NONE ctermbg=NONE cterm=reverse
    if !s:italics
      hi Comment cterm=NONE
      hi Folded cterm=NONE
      hi SpellBad cterm=underline
      hi SpellCap cterm=underline
      hi SpellLocal cterm=underline
      hi SpellRare cterm=underline
      hi Special cterm=NONE
      hi String cterm=NONE
      hi Todo cterm=bold
    endif
    if !get(g:, 'gruvbox_italicize_strings', 1)
      hi Special gui=NONE cterm=NONE
      hi String gui=NONE cterm=NONE
    endif
    hi NormalMode ctermfg=Black ctermbg=White cterm=reverse
    hi InsertMode ctermfg=Blue ctermbg=White cterm=reverse
    hi ReplaceMode ctermfg=Cyan ctermbg=White cterm=reverse
    hi VisualMode ctermfg=Magenta ctermbg=White cterm=reverse
    hi CommandMode ctermfg=Magenta ctermbg=White cterm=reverse
    hi Warnings ctermfg=Magenta ctermbg=White cterm=reverse
    if has('nvim')
      hi! link TermCursor Cursor
      hi TermCursorNC ctermfg=Grey ctermbg=Black cterm=NONE
    endif
  endif
  unlet s:t_Co s:italics
  finish
endif

if s:t_Co >= 8
  if &background ==# 'dark'
    hi Terminal ctermfg=White ctermbg=Black cterm=NONE
    hi Normal ctermfg=Gray ctermbg=NONE cterm=NONE
    hi ColorColumn ctermfg=Black ctermbg=Gray cterm=NONE
    hi Comment ctermfg=Gray ctermbg=NONE cterm=italic
    hi CursorLine ctermfg=NONE ctermbg=NONE cterm=underline
    hi CursorLineNr ctermfg=Yellow ctermbg=NONE cterm=NONE
    hi Error ctermfg=Red ctermbg=Black cterm=reverse
    hi ErrorMsg ctermfg=Black ctermbg=Red cterm=NONE
    hi FoldColumn ctermfg=Gray ctermbg=NONE cterm=NONE
    hi Folded ctermfg=Gray ctermbg=NONE cterm=italic
    hi LineNr ctermfg=Gray ctermbg=NONE cterm=NONE
    hi MatchParen ctermfg=Gray ctermbg=NONE cterm=bold,underline
    hi NonText ctermfg=Gray ctermbg=NONE cterm=NONE
    hi Pmenu ctermfg=White ctermbg=DarkGray cterm=NONE
    hi PmenuSbar ctermfg=NONE ctermbg=DarkGray cterm=NONE
    hi PmenuSel ctermfg=Black ctermbg=Blue cterm=NONE
    hi PmenuThumb ctermfg=NONE ctermbg=Blue cterm=NONE
    hi SignColumn ctermfg=Gray ctermbg=NONE cterm=NONE
    hi SpecialKey ctermfg=Gray ctermbg=NONE cterm=NONE
    hi StatusLine ctermfg=Gray ctermbg=Black cterm=bold,reverse
    hi StatusLineNC ctermfg=Gray ctermbg=Black cterm=reverse
    hi TabLine ctermfg=Black ctermbg=Gray cterm=NONE
    hi TabLineFill ctermfg=Black ctermbg=Gray cterm=NONE
    hi TabLineSel ctermfg=Gray ctermbg=Black cterm=underline
    hi ToolbarButton ctermfg=Black ctermbg=Gray cterm=bold
    hi ToolbarLine ctermfg=NONE ctermbg=Gray cterm=NONE
    hi VertSplit ctermfg=Black ctermbg=Gray cterm=NONE
    hi Visual ctermfg=Black ctermbg=Gray cterm=NONE
    hi WildMenu ctermfg=Blue ctermbg=DarkGray cterm=bold
    hi Conceal ctermfg=Blue ctermbg=NONE cterm=NONE
    hi Cursor ctermfg=NONE ctermbg=NONE cterm=reverse
    hi DiffAdd ctermfg=Green ctermbg=Black cterm=reverse
    hi DiffChange ctermfg=Cyan ctermbg=Black cterm=reverse
    hi DiffDelete ctermfg=Red ctermbg=Black cterm=reverse
    hi DiffText ctermfg=Yellow ctermbg=Black cterm=reverse
    hi Directory ctermfg=Green ctermbg=NONE cterm=bold
    hi EndOfBuffer ctermfg=Black ctermbg=NONE cterm=NONE
    hi IncSearch ctermfg=Magenta ctermbg=Black cterm=reverse
    hi ModeMsg ctermfg=Yellow ctermbg=NONE cterm=bold
    hi MoreMsg ctermfg=Yellow ctermbg=NONE cterm=bold
    hi Question ctermfg=Magenta ctermbg=NONE cterm=bold
    hi Search ctermfg=Yellow ctermbg=Black cterm=reverse
    hi SpellBad ctermfg=Red ctermbg=NONE cterm=italic,underline
    hi SpellCap ctermfg=Blue ctermbg=NONE cterm=italic,underline
    hi SpellLocal ctermfg=Cyan ctermbg=NONE cterm=italic,underline
    hi SpellRare ctermfg=Magenta ctermbg=NONE cterm=italic,underline
    hi Title ctermfg=Green ctermbg=NONE cterm=bold
    hi WarningMsg ctermfg=Red ctermbg=NONE cterm=bold
    hi Boolean ctermfg=Magenta ctermbg=NONE cterm=NONE
    hi Character ctermfg=Magenta ctermbg=NONE cterm=NONE
    hi Conditional ctermfg=Red ctermbg=NONE cterm=NONE
    hi Constant ctermfg=Magenta ctermbg=NONE cterm=NONE
    hi Define ctermfg=Cyan ctermbg=NONE cterm=NONE
    hi Debug ctermfg=Red ctermbg=NONE cterm=NONE
    hi Delimiter ctermfg=Magenta ctermbg=NONE cterm=NONE
    hi Error ctermfg=Red ctermbg=Black cterm=bold,reverse
    hi Exception ctermfg=Red ctermbg=NONE cterm=NONE
    hi Float ctermfg=Magenta ctermbg=NONE cterm=NONE
    hi Function ctermfg=Green ctermbg=NONE cterm=bold
    hi Identifier ctermfg=Blue ctermbg=NONE cterm=NONE
    hi Ignore ctermfg=fg ctermbg=NONE cterm=NONE
    hi Include ctermfg=Cyan ctermbg=NONE cterm=NONE
    hi Keyword ctermfg=Red ctermbg=NONE cterm=NONE
    hi Label ctermfg=Red ctermbg=NONE cterm=NONE
    hi Macro ctermfg=Cyan ctermbg=NONE cterm=NONE
    hi Number ctermfg=Magenta ctermbg=NONE cterm=NONE
    hi Operator ctermfg=Cyan ctermbg=NONE cterm=NONE
    hi PreCondit ctermfg=Cyan ctermbg=NONE cterm=NONE
    hi PreProc ctermfg=Cyan ctermbg=NONE cterm=NONE
    hi Repeat ctermfg=Red ctermbg=NONE cterm=NONE
    hi SpecialChar ctermfg=Red ctermbg=NONE cterm=NONE
    hi SpecialComment ctermfg=Red ctermbg=NONE cterm=NONE
    hi Statement ctermfg=Red ctermbg=NONE cterm=NONE
    hi StorageClass ctermfg=Magenta ctermbg=NONE cterm=NONE
    hi Special ctermfg=Magenta ctermbg=NONE cterm=italic
    hi String ctermfg=Green ctermbg=NONE cterm=italic
    hi Structure ctermfg=Cyan ctermbg=NONE cterm=NONE
    hi Todo ctermfg=fg ctermbg=Black cterm=bold,italic
    hi Type ctermfg=Yellow ctermbg=NONE cterm=NONE
    hi Typedef ctermfg=Yellow ctermbg=NONE cterm=NONE
    hi Underlined ctermfg=Blue ctermbg=NONE cterm=underline
    hi CursorIM ctermfg=NONE ctermbg=NONE cterm=reverse
    if !s:italics
      hi Comment cterm=NONE
      hi Folded cterm=NONE
      hi SpellBad cterm=underline
      hi SpellCap cterm=underline
      hi SpellLocal cterm=underline
      hi SpellRare cterm=underline
      hi Special cterm=NONE
      hi String cterm=NONE
      hi Todo cterm=bold
    endif
    if !get(g:, 'gruvbox_italicize_strings', 1)
      hi Special gui=NONE cterm=NONE
      hi String gui=NONE cterm=NONE
    endif
    hi NormalMode ctermfg=Gray ctermbg=Black cterm=reverse
    hi InsertMode ctermfg=Blue ctermbg=Black cterm=reverse
    hi ReplaceMode ctermfg=Cyan ctermbg=Black cterm=reverse
    hi VisualMode ctermfg=Magenta ctermbg=Black cterm=reverse
    hi CommandMode ctermfg=Magenta ctermbg=Black cterm=reverse
    hi Warnings ctermfg=Magenta ctermbg=Black cterm=reverse
    if has('nvim')
      hi! link TermCursor Cursor
      hi TermCursorNC ctermfg=DarkGray ctermbg=White cterm=NONE
    endif
  else
    " Light background
    hi Terminal ctermfg=White ctermbg=Black cterm=NONE
    hi Normal ctermfg=Black ctermbg=NONE cterm=NONE
    hi ColorColumn ctermfg=White ctermbg=Black cterm=NONE
    hi Comment ctermfg=Black ctermbg=NONE cterm=italic
    hi CursorLine ctermfg=NONE ctermbg=NONE cterm=underline
    hi CursorLineNr ctermfg=Yellow ctermbg=NONE cterm=NONE
    hi Error ctermfg=Red ctermbg=White cterm=reverse
    hi ErrorMsg ctermfg=White ctermbg=Red cterm=NONE
    hi FoldColumn ctermfg=Black ctermbg=NONE cterm=NONE
    hi Folded ctermfg=Black ctermbg=NONE cterm=italic
    hi LineNr ctermfg=Black ctermbg=NONE cterm=NONE
    hi MatchParen ctermfg=Black ctermbg=NONE cterm=bold,underline
    hi NonText ctermfg=Black ctermbg=NONE cterm=NONE
    hi Pmenu ctermfg=Black ctermbg=Grey cterm=NONE
    hi PmenuSbar ctermfg=NONE ctermbg=Grey cterm=NONE
    hi PmenuSel ctermfg=White ctermbg=Blue cterm=NONE
    hi PmenuThumb ctermfg=NONE ctermbg=Blue cterm=NONE
    hi SignColumn ctermfg=Black ctermbg=NONE cterm=NONE
    hi SpecialKey ctermfg=Black ctermbg=NONE cterm=NONE
    hi StatusLine ctermfg=Black ctermbg=White cterm=bold,reverse
    hi StatusLineNC ctermfg=Black ctermbg=White cterm=reverse
    hi TabLine ctermfg=White ctermbg=Black cterm=NONE
    hi TabLineFill ctermfg=White ctermbg=Black cterm=NONE
    hi TabLineSel ctermfg=Black ctermbg=White cterm=underline
    hi ToolbarButton ctermfg=White ctermbg=Black cterm=bold
    hi ToolbarLine ctermfg=NONE ctermbg=Black cterm=NONE
    hi VertSplit ctermfg=White ctermbg=Black cterm=NONE
    hi Visual ctermfg=White ctermbg=Black cterm=NONE
    hi WildMenu ctermfg=Blue ctermbg=Grey cterm=bold
    hi Conceal ctermfg=Blue ctermbg=NONE cterm=NONE
    hi Cursor ctermfg=NONE ctermbg=NONE cterm=reverse
    hi DiffAdd ctermfg=Green ctermbg=White cterm=reverse
    hi DiffChange ctermfg=Cyan ctermbg=White cterm=reverse
    hi DiffDelete ctermfg=Red ctermbg=White cterm=reverse
    hi DiffText ctermfg=Yellow ctermbg=White cterm=reverse
    hi Directory ctermfg=Green ctermbg=NONE cterm=bold
    hi EndOfBuffer ctermfg=White ctermbg=NONE cterm=NONE
    hi IncSearch ctermfg=Magenta ctermbg=White cterm=reverse
    hi ModeMsg ctermfg=Yellow ctermbg=NONE cterm=bold
    hi MoreMsg ctermfg=Yellow ctermbg=NONE cterm=bold
    hi Question ctermfg=Magenta ctermbg=NONE cterm=bold
    hi Search ctermfg=Yellow ctermbg=White cterm=reverse
    hi SpellBad ctermfg=Red ctermbg=NONE cterm=italic,underline
    hi SpellCap ctermfg=Blue ctermbg=NONE cterm=italic,underline
    hi SpellLocal ctermfg=Cyan ctermbg=NONE cterm=italic,underline
    hi SpellRare ctermfg=Magenta ctermbg=NONE cterm=italic,underline
    hi Title ctermfg=Green ctermbg=NONE cterm=bold
    hi WarningMsg ctermfg=Red ctermbg=NONE cterm=bold
    hi Boolean ctermfg=Magenta ctermbg=NONE cterm=NONE
    hi Character ctermfg=Magenta ctermbg=NONE cterm=NONE
    hi Conditional ctermfg=Red ctermbg=NONE cterm=NONE
    hi Constant ctermfg=Magenta ctermbg=NONE cterm=NONE
    hi Define ctermfg=Cyan ctermbg=NONE cterm=NONE
    hi Debug ctermfg=Red ctermbg=NONE cterm=NONE
    hi Delimiter ctermfg=Magenta ctermbg=NONE cterm=NONE
    hi Error ctermfg=Red ctermbg=White cterm=bold,reverse
    hi Exception ctermfg=Red ctermbg=NONE cterm=NONE
    hi Float ctermfg=Magenta ctermbg=NONE cterm=NONE
    hi Function ctermfg=Green ctermbg=NONE cterm=bold
    hi Identifier ctermfg=Blue ctermbg=NONE cterm=NONE
    hi Ignore ctermfg=fg ctermbg=NONE cterm=NONE
    hi Include ctermfg=Cyan ctermbg=NONE cterm=NONE
    hi Keyword ctermfg=Red ctermbg=NONE cterm=NONE
    hi Label ctermfg=Red ctermbg=NONE cterm=NONE
    hi Macro ctermfg=Cyan ctermbg=NONE cterm=NONE
    hi Number ctermfg=Magenta ctermbg=NONE cterm=NONE
    hi Operator ctermfg=Cyan ctermbg=NONE cterm=NONE
    hi PreCondit ctermfg=Cyan ctermbg=NONE cterm=NONE
    hi PreProc ctermfg=Cyan ctermbg=NONE cterm=NONE
    hi Repeat ctermfg=Red ctermbg=NONE cterm=NONE
    hi SpecialChar ctermfg=Red ctermbg=NONE cterm=NONE
    hi SpecialComment ctermfg=Red ctermbg=NONE cterm=NONE
    hi Statement ctermfg=Red ctermbg=NONE cterm=NONE
    hi StorageClass ctermfg=Magenta ctermbg=NONE cterm=NONE
    hi Special ctermfg=Magenta ctermbg=NONE cterm=italic
    hi String ctermfg=Green ctermbg=NONE cterm=italic
    hi Structure ctermfg=Cyan ctermbg=NONE cterm=NONE
    hi Todo ctermfg=fg ctermbg=White cterm=bold,italic
    hi Type ctermfg=Yellow ctermbg=NONE cterm=NONE
    hi Typedef ctermfg=Yellow ctermbg=NONE cterm=NONE
    hi Underlined ctermfg=Blue ctermbg=NONE cterm=underline
    hi CursorIM ctermfg=NONE ctermbg=NONE cterm=reverse
    if !s:italics
      hi Comment cterm=NONE
      hi Folded cterm=NONE
      hi SpellBad cterm=underline
      hi SpellCap cterm=underline
      hi SpellLocal cterm=underline
      hi SpellRare cterm=underline
      hi Special cterm=NONE
      hi String cterm=NONE
      hi Todo cterm=bold
    endif
    if !get(g:, 'gruvbox_italicize_strings', 1)
      hi Special gui=NONE cterm=NONE
      hi String gui=NONE cterm=NONE
    endif
    hi NormalMode ctermfg=Black ctermbg=White cterm=reverse
    hi InsertMode ctermfg=Blue ctermbg=White cterm=reverse
    hi ReplaceMode ctermfg=Cyan ctermbg=White cterm=reverse
    hi VisualMode ctermfg=Magenta ctermbg=White cterm=reverse
    hi CommandMode ctermfg=Magenta ctermbg=White cterm=reverse
    hi Warnings ctermfg=Magenta ctermbg=White cterm=reverse
    if has('nvim')
      hi! link TermCursor Cursor
      hi TermCursorNC ctermfg=Grey ctermbg=Black cterm=NONE
    endif
  endif
  unlet s:t_Co s:italics
  finish
endif

if s:t_Co >= 0
  hi Normal term=NONE
  hi ColorColumn term=reverse
  hi Conceal term=NONE
  hi Cursor term=NONE
  hi CursorColumn term=reverse
  hi CursorLine term=underline
  hi CursorLineNr term=bold,italic,reverse,underline
  hi DiffAdd term=reverse,underline
  hi DiffChange term=reverse,underline
  hi DiffDelete term=reverse,underline
  hi DiffText term=bold,reverse,underline
  hi Directory term=NONE
  hi EndOfBuffer term=NONE
  hi ErrorMsg term=bold,italic,reverse
  hi FoldColumn term=reverse
  hi Folded term=italic,reverse,underline
  hi IncSearch term=bold,italic,reverse
  hi LineNr term=reverse
  hi MatchParen term=bold,underline
  hi ModeMsg term=NONE
  hi MoreMsg term=NONE
  hi NonText term=NONE
  hi Pmenu term=reverse
  hi PmenuSbar term=NONE
  hi PmenuSel term=NONE
  hi PmenuThumb term=NONE
  hi Question term=standout
  hi Search term=italic,underline
  hi SignColumn term=reverse
  hi SpecialKey term=bold
  hi SpellBad term=italic,underline
  hi SpellCap term=italic,underline
  hi SpellLocal term=italic,underline
  hi SpellRare term=italic,underline
  hi StatusLine term=bold,reverse
  hi StatusLineNC term=reverse
  hi TabLine term=italic,reverse,underline
  hi TabLineFill term=reverse,underline
  hi TabLineSel term=bold
  hi Title term=bold
  hi VertSplit term=reverse
  hi Visual term=reverse
  hi VisualNOS term=NONE
  hi WarningMsg term=standout
  hi WildMenu term=bold
  hi Comment term=italic
  hi Constant term=bold,italic
  hi Error term=reverse
  hi Identifier term=italic
  hi Ignore term=NONE
  hi PreProc term=italic
  hi Special term=bold,italic
  hi Statement term=bold
  hi Todo term=bold,underline
  hi Type term=bold
  hi Underlined term=underline
  hi CursorIM term=NONE
  hi ToolbarLine term=reverse
  hi ToolbarButton term=bold,reverse
  if !s:italics
    hi CursorLineNr term=bold,reverse,underline
    hi ErrorMsg term=bold,reverse
    hi Folded term=reverse,underline
    hi IncSearch term=bold,reverse
    hi Search term=underline
    hi SpellBad term=underline
    hi SpellCap term=underline
    hi SpellLocal term=underline
    hi SpellRare term=underline
    hi TabLine term=reverse,underline
    hi Comment term=NONE
    hi Constant term=bold
    hi Identifier term=NONE
    hi PreProc term=NONE
    hi Special term=bold
  endif
  unlet s:t_Co s:italics
  finish
endif

" Color: neutralred        rgb(204,  36,  29)    160 DarkRed
" Color: neutralgreen      rgb(152, 151,  26)    100 DarkGreen
" Color: neutralyellow     rgb(215, 153,  33)    172 DarkYellow
" Color: neutralblue       rgb( 69, 133, 136)    66  DarkBlue
" Color: neutralpurple     rgb(177,  98, 134)    132 DarkMagenta
" Color: neutralaqua       rgb(104, 157, 106)    71  DarkCyan
" Color: neutralorange     rgb(214,  93,  14)    166
" Background: dark
" Color: bg0 rgb(29,32,33) 234 Black
" Color: bg1             rgb(60,  56,  54)     237 DarkGray
" Color: bg2             rgb(80,  73,  69)     239
" Color: bg3             rgb(102, 92,  84)      59
" Color: bg4             rgb(124, 111, 100)    243
" Color: fg0             rgb(251, 241, 199)    230
" Color: fg1             rgb(235, 219, 178)    187 White
" Color: fg2             rgb(213, 196, 161)    187
" Color: fg3             rgb(189, 174, 147)    144
" Color: fg4             rgb(168, 153, 132)    137 Gray
" Color: grey            rgb(146, 131, 116)    102 DarkGray
" Color: red             rgb(251, 73,  52)     203 Red
" Color: green           rgb(184, 187, 38)     142 Green
" Color: yellow          rgb(250, 189, 47)     214 Yellow
" Color: blue            rgb(131, 165, 152)    109 Blue
" Color: purple          rgb(211, 134, 155)    175 Magenta
" Color: aqua            rgb(142, 192, 124)    107 Cyan
" Color: orange          rgb(254, 128, 25)     208 Magenta
" Term colors: bg0  neutralred neutralgreen neutralyellow neutralblue neutralpurple neutralaqua fg4
" Term colors: grey red        green        yellow        blue        purple        aqua        fg1
" Background: light
" Color: bg0 rgb(249,245,215)   229 White
" Color: bg1 rgb(235, 219, 178) 187 Grey
" Color: bg2 rgb(213, 196, 161) 187
" Color: bg3               rgb(189, 174, 147)    144
" Color: bg4               rgb(168, 153, 132)    137
" Color: fg0               rgb( 40,  40,  40)    235 DarkGray
" Color: fg1               rgb( 60,  56,  54)    237 Black
" Color: fg2               rgb( 80,  56,  54)    237
" Color: fg3               rgb(102,  92,  84)     59
" Color: fg4               rgb(124, 111, 100)    243 Black
" Color: grey              rgb(146, 131, 116)    102 DarkGray
" Color: red               rgb(157,   0,   6)    124 Red
" Color: green             rgb(121, 116,  14)    100 Green
" Color: yellow            rgb(181, 118,  20)    172 Yellow
" Color: blue              rgb(  7, 102, 120)    23  Blue
" Color: purple            rgb(143,  63, 113)    126 Magenta
" Color: aqua              rgb( 66, 123,  88)    29  Cyan
" Color: orange            rgb(175,  58,   3)    124 Magenta
" Term colors: fg1  neutralred neutralgreen neutralyellow neutralblue neutralpurple neutralaqua fg4
" Term colors: grey red        green        yellow        blue        purple        aqua        bg0
" Background: any
" vim: et ts=2 sw=2
"

colorscheme gruvbox8_hard

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

hi! Visual cterm=reverse gui=reverse

" See h: statusline for formatting
hi! OwnWinBar cterm=underline ctermfg=11 gui=bold guifg=#121212 guibg=#ff8700 
