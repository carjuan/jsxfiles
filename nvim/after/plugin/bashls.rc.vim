" au BufEnter *.sh lua require'lspconfig'.bashls.setup{}<CR>
lua <<EOF

-- files need to have .sh ext and not the shebang TOF
require'lspconfig'.bashls.setup{}

EOF
