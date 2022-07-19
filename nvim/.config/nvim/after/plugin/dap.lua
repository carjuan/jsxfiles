local dap = require("dap")
local dap_ui = require("dapui")
local dap_virtual_text = require("nvim-dap-virtual-text")
dap.adapters.node2 = {
    type = 'executable',
    command = 'node',
    args = { os.getenv('HOME') .. '/.local/share/vscode-node-debug2/out/src/nodeDebug.js' },
}
dap.configurations.javascript = {
    {
        name = 'Launch',
        type = 'node2',
        request = 'attach',
        cwd = vim.fn.getcwd(),
        sourceMaps = true,
        protocol = 'inspector',
        console = 'integratedTerminal',
        skipFiles = { '<node_internals>/**/*.js' },
    },
    {
        -- For this to work you need to make sure the node process is started with the `--inspect` flag.
        name = 'Attach to process',
        type = 'node2',
        request = 'attach',
        processId = require 'dap.utils'.pick_process,
    },
}

dap.adapters.coreclr = {
    type = "executable",
    command = "/usr/local/netcoredbg",
    args = { "--interpreter=vscode" },
}

dap.configurations.cs = {
    {
        type = "coreclr",
        name = "launch - netcoredbg",
        request = "launch",
        program = function()
            return vim.fn.input('Path to dll: ', vim.fn.getcwd() .. '/bin/Debug/net6.0/', 'file')

            -- TODO: dap config is expects full path to dotnet app dll executable. However
            -- it seems that the path return in this function is being manipulated aftermath
            -- local dll_file = get_absolute_path_to_dll(vim.fn.getcwd())
            -- print("Debugging using dll: " .. dll_file)
            -- return dll_file
        end,
    },
}

dap_ui.setup()
dap_virtual_text.setup()

vim.fn.sign_define('DapBreakpoint', { text = '🟥', texthl = '', linehl = '', numhl = '' })
vim.fn.sign_define('DapBreakpointRejected', { text = '🟦', texthl = '', linehl = '', numhl = '' })
