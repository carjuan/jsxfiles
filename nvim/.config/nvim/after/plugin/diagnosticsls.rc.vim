" Checks if if nvim-lspconfig has been already loaded
if !exists('g:lspconfig')
  finish
endif

lua << EOF
-- TODO
-- try requiring module lspconfig.rc.vim 
-- for on_custom_attach
local nvim_lsp = require('lspconfig')

EOF
