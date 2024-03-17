local M = {}

function M.set_plugin_keymaps()
    -- Neo tree

    vim.api.nvim_set_keymap(
        "n",
        "<A-S-n>",
        ":Neotree source=filesystem reveal=true position=float toggle<CR>",
        {noremap = true, silent = true}
    )
    vim.api.nvim_set_keymap(
        "i",
        "<A-S-n>",
        "<ESC>:Neotree source=filesystem reveal=true position=float toggle<CR>i",
        {noremap = true, silent = true}
    )

    vim.api.nvim_set_keymap(
        "n",
        "<A-S-b>",
        ":Neotree source=buffers reveal=true position=float toggle<CR>",
        {noremap = true, silent = true}
    )
    vim.api.nvim_set_keymap(
        "i",
        "<A-S-b>",
        "<ESC>:Neotree source=buffers reveal=true position=float toggle<CR>i",
        {noremap = true, silent = true}
    )

    vim.api.nvim_set_keymap(
        "n",
        "<A-S-g>",
        ":Neotree source=git_status reveal=true position=float toggle<CR>",
        {noremap = true, silent = true}
    )
    vim.api.nvim_set_keymap(
        "i",
        "<A-S-g>",
        "<ESC>:Neotree source=git_status reveal=true position=float toggle<CR>i",
        {noremap = true, silent = true}
    )

    -- Terminal

    vim.api.nvim_set_keymap("n", "<C-`>", ":ToggleTerm direction=float<CR>", {noremap = true, silent = true})
    vim.api.nvim_set_keymap("i", "<C-`>", "<ESC>:ToggleTerm direction=float<CR>i", {noremap = true, silent = true})

    -- Telescope

    vim.api.nvim_set_keymap("n", "<C-f>", ":Telescope<CR>", {noremap = true, silent = true})
    vim.api.nvim_set_keymap("i", "<C-f>", "<ESC>:Telescope<CR>i", {noremap = true, silent = true})

    vim.api.nvim_set_keymap("n", "<C-o>", ":Telescope find_files<CR>", {noremap = true, silent = true})
    vim.api.nvim_set_keymap("i", "<C-o>", "<ESC>:Telescope find_files<CR>i", {noremap = true, silent = true})

    vim.api.nvim_set_keymap("n", "<C-r>", ":Telescope current_buffer_fuzzy_find<CR>", {noremap = true, silent = true})
    vim.api.nvim_set_keymap(
        "i",
        "<C-r>",
        "<ESC>:Telescope current_buffer_fuzzy_find<CR>i",
        {noremap = true, silent = true}
    )

    -- Symbol outline

    vim.api.nvim_set_keymap("n", "<A-o>", ":SymbolsOutline<CR>", {noremap = true, silent = true})
    vim.api.nvim_set_keymap("i", "<A-o>", "<ESC>:SymbolsOutline<CR>i", {noremap = true, silent = true})
end

return M
