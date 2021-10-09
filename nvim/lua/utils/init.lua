local M = {}
local _inspect = vim.inspect

function M.inspect (tbl)
  print(_inspect(tbl))
end

function M.noremap (mode, lhs, rhs, opts)
  local options = { noremap = true }
  -- tbl_extend merges two or more tables
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

function M.put(...)
    local objects = {}
    for i = 1, select('#', ...) do
        local v = select(i, ...)
        table.insert(objects, vim.inspect(v))
    end

    print(table.concat(objects, '\n'))
    return ...
end

-- have utils for setting keympas for buffer
-- require default options for setting a
-- a key map 
--
-- API:
-- require defualt_config -- opts for keymaps
-- if not config then set default config 
-- for files

return M

