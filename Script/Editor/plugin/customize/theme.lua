-- https://github.com/uloco/bluloco.nvim

local M = {}

function M.initialize()
    require("bluloco").setup(
        {
            style = "light",
            transparent = false,
            italics = false,
            terminal = vim.fn.has("gui_running") == 1,
            guicursor = true
        }
    )

    vim.cmd("colorscheme bluloco-light")
end

return M
