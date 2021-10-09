-- TODO: Highlight css syntax in styled components React (WIP)
local ts_utils = require("nvim-treesitter.ts_utils")
local ts = require("vim.treesitter")
local parser =  vim.treesitter.get_parser()
local u = require('utils')
local api = vim.api
local bufnr = api.nvim_get_current_buf()

local M = {}
local Query = {}
M.__index = Query

local query = [[
  "for" @keyword
  "if" @keyword
  "return" @keyword

  (string_literal) @string
  (number_literal) @number
  (comment) @comment

  (preproc_function_def name: (identifier) @function)

  ; ... more definitions
]]

local function get_node()

    local tsparser = parser:parse()
    local root = tsparser[1]:root()
    local node = root:child(9)

    -- _inspect(node:iter_children())
    for key in node:iter_children() do
        local txt_node = ts_utils.get_node_text(key)
        u.put(txt_node)
   end
    print(node)

end
-- lua print(require 'nvim-treesitter.ts_utils'.get_node_text(require'nvim-treesitter.ts_utils'.get_node_at_cursor(0)))
-- lua _inspect(require 'nvim-treesitter.ts_utils'.get_node_text(require'nvim-treesitter.ts_utils'.get_node_at_cursor(0)))
-- highlighter = vim.treesitter.TSHighlighter.new(query, bufnr, lang)
-- alternatively, to use the current buffer and its filetype:
-- local highlighter = vim.treesitter.TSHighlighter.new(query)
-- _inspect(vim.treesitter.highlighter)

-- Don't recreate the highlighter for the same buffer, instead
-- modify the query like this:

function M:get_sexpr()
    -- local root = current_parsed[1]:root()
    print(tsparser[1]:root():child(6):sexpr())
end

get_node()
return M

