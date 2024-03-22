-- https://github.com/uloco/bluloco.nvim
-- https://neoland.dev/plugin/8195

local M = {}

function M.initialize()
    -- require("bluloco").setup(
    --     {
    --         style = "light",
    --         transparent = false,
    --         italics = false,
    --         terminal = vim.fn.has("gui_running") == 1,
    --         guicursor = true
    --     }
    -- )

    -- vim.cmd("colorscheme bluloco-light")

    local c = require("vscode.colors").get_colors()
    require("vscode").setup(
        {
            style = 'light',
            transparent = false,
            italic_comments = true,
            underline_links = true,
            disable_nvimtree_bg = false
        }
    )
    require("vscode").load()
end

return M

