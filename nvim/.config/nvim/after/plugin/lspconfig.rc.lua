local nvim_lsp = require('lspconfig')
local protocol = require('vim.lsp.protocol')
local home = os.getenv('HOME')
local luaserver = require('lsp_lua')
local sumneko_lua = luaserver()
local pid = vim.fn.getpid()


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

    local opts = { noremap = true, silent = true }
    -- (...) works similar to Rest operator in JS
    -- Collects all arguments under ... or use variable arg to use table as arguments
    -- local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end

    local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

    -- Enable completion triggered by <c-x><c-o>
    buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')


    -- see `:h vim.lsp.*` for documentation on any of the functions below

    vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
    vim.keymap.set('n', 'dN', vim.diagnostic.goto_prev, opts)
    vim.keymap.set('n', 'dn', vim.diagnostic.goto_next, opts)
    vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

    -- find diagnostics for current buffer only
    vim.keymap.set('n', 'da', function()
        require('telescope.builtin').diagnostics({ bufnr = 0 })
        print("Showed diagnostics for current buffer only")
    end, opts)

    -- find diagnostics for workspace <cwd>
    vim.keymap.set('n', 'dA', function()
        require('telescope.builtin').diagnostics()
        print("Showed diagnostics for current buffer only")
    end, opts)

    vim.keymap.set('n', 'fr', '<cmd>Telescope lsp_references<CR>', opts)
    vim.keymap.set('n', 'fd', '<cmd>Telescope lsp_definitions<CR>', opts)
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = 0 }, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('i', '<C-k>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
    vim.keymap.set('n', '<space>wl', vim.lsp.buf.list_workspace_folders, opts)
    vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', '<space>q', vim.lsp.diagnostic.set_loclist, opts)
    vim.keymap.set("n", "ff", vim.lsp.buf.formatting, opts)

    --formatting
    if client.server_capabilities.document_formatting then
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
        client.server_capabilities.document_formatting = false
    end

    on_custom_attach(client, bufnr)
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)
nvim_lsp.tsserver.setup {
    -- on_attach_wrapper disables formatting for a lan server
    capabilities = capabilities,
    on_attach = disable_formatting,
    filetypes = { 'javascript', 'typescript', 'typescriptreact', 'typescript.tsx' },
    -- if handlers is enable, customizes diagnositcs in buffer, disables icons and underline
    handlers = {
        ["textDocument/publishDiagnostics"] = vim.lsp.with(
            vim.lsp.diagnostic.on_publish_diagnostics, {
            underline = false,
            signs = false
        }
        )
    },
}

nvim_lsp.omnisharp.setup {
    capabilities = capabilities,
    on_attach = on_custom_attach,
    cmd = { string.format("%s/.cache/omnisharp-vim/omnisharp-roslyn/run", home), "--languageserver", "--hostPID", tostring(pid) },
}

nvim_lsp.bashls.setup {
    capabilities = capabilities,
    on_attach = on_custom_attach,
    filetypes = { 'sh', 'zsh' },
    handlers = {
        ["textDocument/publishDiagnostics"] = vim.lsp.with(
            vim.lsp.diagnostic.on_publish_diagnostics, {
            underline = false,
            signs = false
        }
        )
    },
}


nvim_lsp.sumneko_lua.setup {
    capabilities = capabilities,
    on_attach = on_custom_attach,
    cmd = { sumneko_lua.binary, "-E", sumneko_lua.root_path .. "/main.lua" },
    settings = {
        Lua = {
            runtime = {
                -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT',
                -- Setup your lua path
                path = vim.split(package.path, ';')
            },
            diagnostics = {
                enable = true,
                -- Get the language server to recognize the `vim` global
                globals = { 'vim' }
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = { [vim.fn.expand('$VIMRUNTIME/lua')] = true, [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true },
                preloadFileSize = 400,
            }
        }
    }
}
-- Enable (broadcasting) snippet capability for completion
--local capabilities = vim.lsp.protocol.make_client_capabilities()
--capabilities.textDocument.completion.completionItem.snippetSupport = true

--vim_lsp.html.setup lspcon{
-- capabilities = capabilities,
--}
nvim_lsp.jsonls.setup {
    capabilities = capabilities,
    on_attach = on_custom_attach,
}

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
