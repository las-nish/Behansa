-- https://github.com/windwp/nvim-autopairs

local M = {}

function M.initialize()
    local autopairs_setup, autopairs = pcall(require, "nvim-autopairs")
    if not autopairs_setup then
        return
    end

    autopairs.setup(
        {
            check_ts = true, -- Enable treesitter
            ts_config = {
                lua = {"string"}, -- Don't add pairs in lua string treesitter nodes
                javascript = {"template_string"}, -- Don't add pairs in javscript template_string treesitter nodes
                java = false -- Don't check treesitter on java
            }
        }
    )

    local cmp_autopairs_setup, cmp_autopairs = pcall(require, "nvim-autopairs.completion.cmp")
    if not cmp_autopairs_setup then
        return
    end

    local cmp_setup, cmp = pcall(require, "cmp")
    if not cmp_setup then
        return
    end

    cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
end

return M
