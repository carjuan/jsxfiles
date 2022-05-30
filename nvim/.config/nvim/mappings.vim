
" ======================Mappings==================================

"======================= Calling pluggins settings and key mappings ======

" autocommand for executing code with <leader>rc
" augroup exe_code
"   autocmd!

"   " Exe python code
"   autocmd FileType python nnoremap <buffer> <localleader>r
"i              \ :sp<CR> :term python3 %<CR> :startinsert<CR>

"   " Exe JavaScript code
"   autocmd FileType javascript nnoremap <buffer> <localleader>r
"               \ :sp<CR> :term nodejs %<CR> :startinsert<CR>

"   autocmd FileType bash,sh nnoremap <buffer> <localleader>r
"               \ :sp<CR> :term bash %<CR> :startinsert<CR>
" augroup END

" Opens a new :terminal in vsp
" Go into normal mode in terminal/insert mode
nnoremap <silent> <Leader>nvt :vs<Bar>:te<CR>
nnoremap <silent> <Leader>nst :sp<Bar>:te<CR>

" Getting treesitter to parse styled-components
nnoremap <Leader>rts :lua require('JS/ts_css_parser'):get_sexpr()<CR>

" Map <C-L> (redraw screen) to also turn off search highlighting until the next search
nnoremap <Leader>nh :noh<CR>
" command! -nargs=? Fold :call     CocAction('fold', <f-args>)
command! -nargs=* -bar -bang -count=0 -complete=dir	Vex	call netrw#Explore(<count>,1,4+<bang>0,<q-args>) <Bar> : vertical resize 30<CR>
command! -nargs=0 So :source  
command! -nargs=0 -bar -bang -count=0 Rlua :w | :luafile %
nnoremap ve :Vex<CR>
nnoremap <Leader>rl :Rlua<CR>
nnoremap <Leader>nvim :vsp $iOME/.config/nvim/init.vim<CR>
nnoremap <Leader>ip :PlugInstall<CR>
nnoremap <Leader>db :bdelete<CR>
nnoremap <Leader>rif :w <Bar> so %<CR>
nnoremap <Leader>rjs :w <Bar> !node %<CR>
nnoremap <Leader>rs :w <Bar> !./%

" Get absolute path of current file
nnoremap <Leader>. :echo expand('%:p')<CR>

" Moving between panes
nnoremap <C-h> :wincmd h<CR>
nnoremap <C-j> :wincmd j<CR>
nnoremap <C-k> :wincmd k<CR>
nnoremap <C-l> :wincmd l<CR>

" vimspector
nnoremap <leader>da :call vimspector#Launch()<CR>
nnoremap <leader>dx :call vimspector#Reset()<CR>
nnoremap <leader>dx :call vimspector#Reset()<CR>
nnoremap <leader>dX :call vimspector#ClearBreakpoints()<CR>


vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
inoremap jj <Esc>



" better tabbing 
vnoremap < <gv
vnoremap > >gv
" Easy Motion mapping configs
" Default mapping is <Leader><Leader>s

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" :q vim buffers

" Use arrows to resize windows ->, <-, up, down arrows
nnoremap <Up>    :resize -2<CR>
nnoremap <Down>    :resize +2<CR>
nnoremap <Left>    :vertical resize -2<CR>
nnoremap <Right>    :vertical resize +2<CR>
" prevent typo when pressing `wq` or `q`
cnoreabbrev <expr> W ((getcmdtype() is# ':' && getcmdline() is# 'W')?('w'):('W'))
cnoreabbrev <expr> Q ((getcmdtype() is# ':' && getcmdline() is# 'Q')?('q'):('Q'))
cnoreabbrev <expr> WQ ((getcmdtype() is# ':' && getcmdline() is# 'WQ')?('wq'):('WQ'))
cnoreabbrev <expr> Wq ((getcmdtype() is# ':' && getcmdline() is# 'Wq')?('wq'):('Wq'))
" vim-vsnip snippets mappings"
" Expand
" imap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
" smap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
" 
" " Expand or jump
" imap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
" smap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
" 
" " Jump forward or backward
" imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
" smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
" imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
" smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'



