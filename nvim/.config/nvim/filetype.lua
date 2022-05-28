local _global_opts = vim.o
local _local_csharp_options = {
  tabstop = 8,
  softtabstop = 4,
  shiftwidth = 4,
}

local set_options = function()
  for key, value in pairs(_local_csharp_options) do
    _global_opts[key] = value
  end
end

vim.api.nvim_create_autocmd(
  { "FileType", "BufEnter" },
  {
    pattern = { "*.cs", "*.csharp" },
    callback = set_options,
  })
