if !exists('g:loaded_lspsaga') | finish | endif

lua << EOF
local u = require('utils/map')
local saga = require('lspsaga')

--saga.init_lsp_saga{
--  error_sign = '',
--  warn_sign = '',
--  hint_sign = '',
--  infor_sign = '',
--  border_style = "round",
--}

-- u.noremap('n', '<S-j>', '<cmd>Lspsaga diagnostic_jump_next<CR>', { silent = true })
-- u.noremap('n', '<S-p>', '<cmd>Lspsaga diagnostic_jump_prev<CR>', { silent = true })
u.noremap('n', 'K', '<cmd>Lspsaga hover_doc<CR>', { silent = true })
u.noremap('n', '<S-k>', '<cmd>Lspsaga signature_help<CR>', { silent = true })
u.noremap('n', 'gh', '<cmd>Lspsaga lsp_finder<CR>', { silent = true })
-- q to quit float window by default
u.noremap('n', '<space>rn', '<cmd>lua require("lspsaga.rename").rename()<CR>')

EOF
