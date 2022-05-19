local DATA_HOME = os.getenv("XDG_DATA_HOME")

local get_path = function()

  local sumneko = {}
  if vim.fn.has("mac") == 1 then
    sumneko.root_path = DATA_HOME .. "/nvim/lua-language-server"
    sumneko.binary = DATA_HOME .. "/nvim/lua-language-server/bin/macOS/lua-language-server"
      -- sumneko_root_path = DATA_HOME .. "/nvim/lua-language-server"
      -- sumneko_binary = DATA_HOME .. "/nvim/lua-language-server/bin/macOS/lua-language-server"
  elseif vim.fn.has("unix") == 1 then
    sumneko.root_path = DATA_HOME .. "/lua-language-server"
    sumneko.binary = DATA_HOME .. "/lua-language-server/bin/lua-language-server"
      -- sumneko_root_path = DATA_HOME .. "/lua-language-server"
      -- sumneko_binary = DATA_HOME .. "/lua-language-server/bin/lua-language-server"
  else
      print("Unsupported system for sumneko")
  end

  return sumneko
 
end

return get_path
