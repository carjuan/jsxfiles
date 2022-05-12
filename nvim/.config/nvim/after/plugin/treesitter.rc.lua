
local ts = require'nvim-treesitter.configs'
ts.setup { 
  ensure_installed = 'all',
  highlight = { 
    enable = true,
    disable = { "html" }, -- list of languages that will be disabled
  },
}

require "nvim-treesitter.configs".setup {
  playground = {
    enable = true,
    disable = {},
    updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
    persist_queries = false, -- Whether the query persists across vim sessions
    keybindings = {
      toggle_query_editor = 'o',
      toggle_hl_groups = 'i',
      toggle_injected_languages = 't',
      toggle_anonymous_nodes = 'a',
      toggle_language_display = 'I',
      focus_language = 'f',
      unfocus_language = 'F',
      update = 'R',
      goto_node = '<cr>',
      show_help = '?',
    },
  },

  context_commentstring = {
      enable = true,
      config = {
          c = "// %s",
          lua = "-- %s",
      },
  },
}
