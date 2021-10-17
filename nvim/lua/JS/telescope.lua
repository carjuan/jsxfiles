local actions = require('telescope.actions')
local M = {}

M.search_dotfiles = function()
    require('telescope.builtin').find_files({
        prompt_title = '< VimRC >',
        cwd = vim.env.NVIM_DOTFILES,
        hidden = true,
    })
end

-- TODO: work on git_branches and git_branch delete
-- already implemented by default? checks docs
M.git_branches = function()
    require("telescope.builtin").git_branches({
        attach_mappings = function(_, map)
            map("i", "<c-d>", actions.git_delete_branch)
            map("n", "<c-d>", actions.git_delete_branch)
            return true
        end,
    })
end

local function select_theme(prompt_bufnr, map)

    local function set_theme(close)
        local content = require("telescope.actions.state").get_selected_entry(
            prompt_bufnr
        )
        prrint()
        _G.JS = 2
    end

    map("i", "<C-p", function()
        set_theme()
    end)


end

local function selector(prompt, cwd)
    return function()
        -- Choose to go with find_browser instead of find_files to pass <depth> of search
        -- and <cwd>
        require("telescope.builtin").file_browser({
            prompt_title = prompt,
            cwd = cwd,

            attach_mappings = function(prompt_bufnr, map)
                -- map function to select the current theme
                select_theme(prompt_bufnr, map)
                return true
            end,
        })
    end
end

M.theme_selector = selector("< Themes >", "~/.config/nvim/themes/colorthemes")

return M
