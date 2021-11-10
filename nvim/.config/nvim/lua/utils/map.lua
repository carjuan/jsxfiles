local M = {}

M.noremap = function (mode, lhs, rhs, opts)
  local options = { noremap = true }
  -- tbl_extend merges two or more tables
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

return M

