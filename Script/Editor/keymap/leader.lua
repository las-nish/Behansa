local M = {}

function M.set_leader_keymaps()
    vim.api.nvim_set_keymap("n", "\\gterm", ":!gnome-terminal &<CR>", {noremap = true, silent = true})
    vim.api.nvim_set_keymap("n", "\\tilix", ":!tilix &<CR>", {noremap = true, silent = true})
    vim.api.nvim_set_keymap("n", "\\explorer", ":!nautilus ./ &<CR>", {noremap = true, silent = true})

    -- Theme (bluloco)

    vim.api.nvim_set_keymap("n", "\\light", ":colorscheme bluloco-light<CR>", {noremap = true, silent = true})
    vim.api.nvim_set_keymap("n", "\\dark", ":colorscheme bluloco-dark<CR>", {noremap = true, silent = true})

    -- Auto save toggle

    vim.api.nvim_set_keymap("n", "\\asave", ":ASToggle<CR>", {noremap = true, silent = true})

    -- Better whitespace toggle

    vim.api.nvim_set_keymap("n", "\\wspace", ":ToggleWhitespace<CR>", {noremap = true, silent = true})

    -- Clean whitespaces

    vim.api.nvim_set_keymap("n", "\\cspace", ":StripWhitespace<CR>", {noremap = true, silent = true})

    -- Git

    vim.api.nvim_set_keymap("n", "\\gitwdiff", ":Gitsigns toggle_word_diff<CR>", {noremap = true, silent = true})
    vim.api.nvim_set_keymap(
        "n",
        "\\gitblame",
        ":Gitsigns toggle_current_line_blame<CR>",
        {noremap = true, silent = true}
    )
    vim.api.nvim_set_keymap("n", "\\gitsigns", ":Gitsigns toggle_signs<CR>", {noremap = true, silent = true})
    vim.api.nvim_set_keymap("n", "\\gitnumhl", ":Gitsigns toggle_numhl<CR>", {noremap = true, silent = true})
    vim.api.nvim_set_keymap("n", "\\gitlinehl", ":Gitsigns toggle_linehl<CR>", {noremap = true, silent = true})

    -- Mason

    vim.api.nvim_set_keymap("n", "\\mason", ":Mason<CR>", {noremap = true, silent = true})
    vim.api.nvim_set_keymap("n", "\\masonu", ":MasonUpdate<CR>", {noremap = true, silent = true})
    vim.api.nvim_set_keymap("n", "\\masonl", ":MasonLog<CR>", {noremap = true, silent = true})

    -- Plant UML

    vim.api.nvim_set_keymap("n", "\\pumlp", ":PlantumlOpen<CR>", {noremap = true, silent = true})

    -- Markdown preview

    vim.api.nvim_set_keymap("n", "\\mdp", ":MarkdownPreview<CR>", {noremap = true, silent = true})
    vim.api.nvim_set_keymap("n", "\\mdps", ":MarkdownPreviewStop<CR>", {noremap = true, silent = true})
end

return M
