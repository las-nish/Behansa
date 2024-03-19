-- https://github.com/hrsh7th/cmp-nvim-lsp

local M = {}

function M.initialize()
    local cmp_status, cmp = pcall(require, "cmp")
    if not cmp_status then
        return
    end

    cmp.setup(
        {
            snippet = {
                expand = function(args)
                    luasnip.lsp_expand(args.body)
                end
            },
            mapping = cmp.mapping.preset.insert(
                {
                    ["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
                    ["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
                    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                    ["<C-f>"] = cmp.mapping.scroll_docs(4),
                    ["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
                    ["<C-e>"] = cmp.mapping.abort(), -- close completion window
                    ["<CR>"] = cmp.mapping.confirm({select = false})
                }
            ),

            sources = cmp.config.sources(
                {
                    {name = "nvim_lsp"}, -- Lsp
                    {name = "luasnip"}, -- Snippets
                    {name = "buffer"}, -- Text within current buffer
                    {name = "path"} -- File system paths
                }
            )
        }
    )

    vim.opt.completeopt = "menu,menuone,noselect"
end

return M
