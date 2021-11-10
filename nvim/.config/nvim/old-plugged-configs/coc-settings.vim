inoremap <silent><expr> <c-space> coc#refresh()

nnoremap <silent> <Leader>d :call <SID>show_documentation()<CR>

" Use K to show documentation in preview window.
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Mappings for CoCList
" Show all diagnostics.
nmap <Leader>rw <Plug>(coc-rename)

nnoremap <Leader>prw :CocSearch <C-R>=expand("<cword>")<CR><CR>

nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions. =======================
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>

" Coc Explorer
nnoremap <space>f :CocCommand explorer --preset floating<CR>
let g:coc_explorer_global_presets = {
\   '.vim': {
\    'root-uri': '~/.vim',
\   },
\   'floating': {
\     'position': 'floating',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingTop': {
\     'position': 'floating',
\     'floating-position': 'center-top',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingLeftside': {
\     'position': 'floating',
\     'floating-position': 'left-center',
\     'floating-width': 50,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingRightside': {
\     'position': 'floating',
\     'floating-position': 'right-center',
\     'floating-width': 50,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'simplify': {
\     'file-child-template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
\   }
\ }


" GoTo code Navigation
" =============================
" nnoremap <silent> gy <Plug>(coc-type-definition)
" nnoremap <Leader>gd <Plug>(coc-definition)
" nnoremap <silent> gi <Plug>(coc-implementation)
" nnoremap <Leader>gr <Plug>(coc-references)
" vmap <Leader>f <Plug>(coc-format-selected)

" Remap keys for applying codeAction to the current buffer.
nnoremap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nnoremap <leader>qf  <Plug>(coc-fix-current)

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)
" Add `:Prettier` command to formatFile
command! -nargs=0 Prettier :CocCommand prettier.formatFile
