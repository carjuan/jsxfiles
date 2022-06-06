local _global_opts = vim.o
local _local_csharp_options = {
  tabstop = 8,
  softtabstop = 4,
  shiftwidth = 4,
}

-- TODO: refactor - too many repeated functions for setting keymaps | noremap is used too many times
-- check what these callbacks are passed, maybe the file extension?
-- if callback is passed filetype
--  I could map configuration in a table for each filetype
--  and loop over it
local set_and_run_cs_files = function()
  for key, value in pairs(_local_csharp_options) do
    _global_opts[key] = value
  end
  vim.keymap.set('n', '<leader>rf', ':w | :!dotnet run<CR>', { noremap = true })
end

local run_lua_files = function()
  vim.keymap.set('n', '<leader>rf', ':w | luafile %<CR>', { noremap = true })
end

local run_bash_files = function()
  vim.keymap.set('n', '<leader>rf', ':w | :!./%<CR>', { noremap = true })
end

local run_js_files = function()
  vim.keymap.set('n', '<leader>rf', ':w | :!node %<CR>', { noremap = true })
end

vim.api.nvim_create_autocmd(
  { "FileType", "BufEnter" },
  {
    pattern = { "*.cs", "*.csharp" },
    callback = set_and_run_cs_files,
  })

vim.api.nvim_create_autocmd(
  { "FileType", "BufEnter" },
  {
    pattern = { "*.bash", "*.sh", "sh" },
    callback = run_bash_files,
  })

vim.api.nvim_create_autocmd(
  { "FileType", "BufEnter" },
  {
    pattern = { "*.lua" },
    callback = run_lua_files,
  })

vim.api.nvim_create_autocmd(
  { "FileType", "BufEnter" },
  {
    pattern = { "*.js" },
    callback = run_js_files,
  })
