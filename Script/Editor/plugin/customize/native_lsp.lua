-- https://github.com/neovim/nvim-lspconfig

local M = {}

function M.initialize()
    local lspconfig = require("lspconfig")

    lspconfig.pyright.setup {}
    lspconfig.tsserver.setup {}
    lspconfig.clangd.setup {}

    lspconfig.gopls.setup {
        cmd = {"gopls"},
        capabilities = capabilities,
        settings = {
            gopls = {
                experimentalPostfixCompletions = true,
                analyses = {
                    unusedparams = true,
                    shadow = true
                },
                staticcheck = true
            }
        },
        on_attach = on_attach
    }

    lspconfig.rust_analyzer.setup {
        settings = {
            ["rust-analyzer"] = {}
        }
    }
end

return M
