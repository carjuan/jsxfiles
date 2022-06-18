" <silent>?
" nnoremap <Leader>ff <cmd>Telescope find_files<CR>
nnoremap <Leader>fb <cmd>Telescope buffers<CR>
nnoremap <Leader>fh <cmd>Telescope help_tags<CR>

" presumably it will search for .gitignore files as well 
" Solution: map('n', '<leader>ff', "<cmd>lua require'telescope.builtin'.find_files({ find_command = {'rg', '--files', '--hidden', '-g', '!.git' }})<cr>", default_opts)
nnoremap <silent> <Leader>ff :lua require'telescope.builtin'.find_files({ hidden = true, follow = true })<CR>
nnoremap <Leader>fg :lua require'telescope.builtin'.live_grep({additional_args = function (opts) return {'--hidden', '--with-filename', '--line-number', '--smart-case'} end})<CR>
nnoremap <Leader>fs :lua require('telescope.builtin').grep_string({ search = vim.fn.input('Grep For > ')})<CR>
nnoremap <Leader>fe :lua require('telescope.builtin').file_browser( { hidden = true } )<CR>
nnoremap <Leader>vrc :lua require('JS/telescope').search_dotfiles()<CR>
nnoremap <Leader>st :lua require('JS/telescope').theme_selector()<CR>


lua <<EOF

local actions = require('telescope.actions')

require('telescope').setup({
  defaults = {
    file_sorter = require('telescope.sorters').get_fzy_sorter,
    prompt_prefix = ' > ',
    color_devicons = true,

    mappings = {
      -- TODO: check :h quickfix
      -- :cnext, :cprev to navigate quickfix list
      i = {
          ["<C-q>"] = actions.send_to_qflist,
      },
    },
  },
  extensions = {
    fzy_native = {
      override_generic_sorter = false,
      override_file_sorter = true
    },
  },
})

require('telescope').load_extension('fzy_native')

EOF

