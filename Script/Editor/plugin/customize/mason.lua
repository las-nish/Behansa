-- https://github.com/williamboman/mason.nvim

local M = {}

function M.initialize()
    require("mason").setup(
        {
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗"
                }
            }
        }
    )

    require("mason-lspconfig").setup()
end

return M
