if !exists('g:lspconfig')
  finish
endif

lua << EOF
local nvim_lsp = require('lspconfig')
local protocol = require('vim.lsp.protocol')

-- TODO: require a wrapper for cmp and update capabilities in TSSERVER 
--require'cmp'.setup {
--  sources = {
--    { name = 'nvim_lsp' }
--  }
--}
--
---- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
--local capabilities = vim.lsp.protocol.make_client_capabilities()
--capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)
--
---- The following example advertise capabilities to `clangd`.
--require'lspconfig'.clangd.setup {
--  capabilities = capabilities,
--}



-- Use an on_custom_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_custom_attach = function(client, bufnr)

  -- (...) works similar to Rest operator in JS
  -- Collects all arguments under ... or use variable arg to use table as arguments
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  -- Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings
  local opts= { noremap = true, silent = true }

  -- see `:h vim.lsp.*` for documentation on any of the functions below
  buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  -- buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
  vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0}, opts)
  buf_set_keymap('n', '<leader>fd', '<cmd>Telescope diagnostics<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  --buf_set_keymap('i', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  buf_set_keymap('n', 'gt', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
  --buf_set_keymap('n', '<C-j>', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', '<S-C-j>', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
  buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
  buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)

  --formatting
  if client.resolved_capabilities.document_formatting then
    vim.api.nvim_command [[augroup Format]]
    vim.api.nvim_command [[autocmd! * <buffer>]]
    vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
    vim.api.nvim_command [[augroup END]]
  end


  --Provides icon for objects in completion
  --protocol.SymbolKind = { }
  protocol.CompletionItemKind = {
    '', -- Text
    '', -- Method
    '', -- Function
    '', -- Constructor
    '', -- Field
    '', -- Variable
    '', -- Class
    'ﰮ', -- Interface
    '', -- Module
    '', -- Property
    '', -- Unit
    '', -- Value
    '', -- Enum
    '', -- Keyword
    '﬌', -- Snippet
    '', -- Color
    '', -- File
    '', -- Reference
    '', -- Folder
    '', -- EnumMember
    '', -- Constant
    '', -- Struct
    '', -- Event
    'ﬦ', -- Operator
    '', -- TypeParameter
  }

end



--TODO
-- Refactor: move this to normal on_custom_attach
-- helper to disable fomratting for tssserver
-- this function needs to be attached to on_attach in client config
-- using diagnosticls for formatting file
local disable_formatting = function(client, bufnr)
  
  -- set file extension
  local file_extension = 'js'
  -- gets file extension for current <%>file
  local current_buf_file_extension = vim.fn.expand('%:e')
  
  

  if current_buf_file_extension == file_extension then
    client.resolved_capabilities.document_formatting = false    
  end

  on_custom_attach(client, bufnr)
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)
nvim_lsp.tsserver.setup{
  -- on_attach_wrapper disables formatting for a lan server
  capabilities = capabilities,
  on_attach = disable_formatting,
  filetypes = {'javascript', 'typescript', 'typescriptreact', 'typescript.tsx' },
  -- if handlers is enable, customizes diagnositcs in buffer, disables icons and underline
  handlers = {
    ["textDocument/publishDiagnostics"] =  vim.lsp.with(
      vim.lsp.diagnostic.on_publish_diagnostics, {
        underline = false,
        -- This sets the spacing and the prefix, obviously.
        signs = false
      }
    )
  },
}

nvim_lsp.bashls.setup{
  capabilities = capabilities,
  on_attach = on_custom_attach,
  filetypes = {'sh'},
  handlers = {
    ["textDocument/publishDiagnostics"] =  vim.lsp.with(
      vim.lsp.diagnostic.on_publish_diagnostics, {
        underline = false,
        -- This sets the spacing and the prefix, obviously.
        signs = false
      }
    )
  },
}

-- Enable (broadcasting) snippet capability for completion
--local capabilities = vim.lsp.protocol.make_client_capabilities()
--capabilities.textDocument.completion.completionItem.snippetSupport = true

--vim_lsp.html.setup lspcon{
-- capabilities = capabilities,
--}
nvim_lsp.diagnosticls.setup {
  capabilities = capabilities,
  on_attach = on_custom_attach,
  filetypes = { 'javascript', 'javascriptreact', 'json', 'typescript', 'typescriptreact', 'less', 'markdown', 'html' },
  init_options = {
    linters = {
      eslint = {
        command = 'eslint_d',
        rootPatterns = { '.git' },
        debounce = 100,
        args = { '--stdin', '--stdin-filename', '%filepath', '--format', 'json' },
        sourceName = 'eslint_d',
        parseJson = {
          errorsRoot = '[0].messages',
          line = 'line',
          column = 'column',
          endLine = 'endLine',
          endColumn = 'endColumn',
          message = '[eslint] ${message} [${ruleId}]',
          security = 'severity'
        },
        securities = {
          [2] = 'error',
          [1] = 'warning'
        }
      },
    },
    filetypes = {
      javascript = 'eslint',
      javascriptreact = 'eslint',
      typescript = 'eslint',
      typescriptreact = 'eslint',
    },
    formatters = {
      eslint_d = {
        command = 'eslint_d',
        args = { '--stdin', '--stdin-filename', '%filename', '--fix-to-stdout' },
        rootPatterns = { '.git' },
      },
      prettier = {
        command = 'prettier',
        args = { '--stdin-filepath', '%filename' }
      }
    },
    formatFiletypes = {
      javascript = 'eslint_d',
      javascriptreact = 'eslint_d',
      json = 'prettier',
      scss = 'prettier',
      html = 'prettier',
      css = 'prettier',
      less = 'prettier',
      typescript = 'eslint_d',
      typescriptreact = 'eslint_d',
      json = 'prettier',
      markdown = 'prettier',
    }
  }
}


-- icon for diagnostics

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    underline = false,
    -- This sets the spacing and the prefix, obviously.
    signs = false,
    virtual_text = {
      spacing = 4,
      prefix = ''
    }
  }
)

EOF
