local M = {}

function M.set_default_keymaps()
    vim.api.nvim_set_keymap("v", "<C-c>", '"+y', {noremap = true, silent = true})

    vim.api.nvim_set_keymap("n", "<C-v>", '"+p', {noremap = true, silent = true})
    vim.api.nvim_set_keymap("i", "<C-v>", "<C-r>+", {noremap = true, silent = true})

    vim.api.nvim_set_keymap("v", "<C-x>", '"+x', {noremap = true, silent = true})

    vim.api.nvim_set_keymap("n", "<C-z>", "u", {noremap = true, silent = true})
    vim.api.nvim_set_keymap("i", "<C-z>", "<C-o>u", {noremap = true, silent = true})

    vim.api.nvim_set_keymap("n", "<C-y>", "<C-r>", {noremap = true, silent = true})
    vim.api.nvim_set_keymap("i", "<C-y>", "<C-o><C-r>", {noremap = true, silent = true})

    vim.api.nvim_set_keymap("n", "<A-z>", ":set wrap!<CR>", {noremap = true, silent = true})
    vim.api.nvim_set_keymap("i", "<A-z>", "<Esc>:set wrap!<CR>i", {noremap = true, silent = true})

    vim.api.nvim_set_keymap("n", "<C-a>", "ggVG", {noremap = true, silent = true})

    vim.api.nvim_set_keymap("n", "<C-s>", ":update<CR>", {noremap = true, silent = true})
    vim.api.nvim_set_keymap("i", "<C-s>", "<Esc>:update<CR>i", {noremap = true, silent = true})

    vim.api.nvim_set_keymap("n", "<C-S-s>", ":wall<CR>", {noremap = true, silent = true})
    vim.api.nvim_set_keymap("i", "<C-S-s>", "<Esc>:wall<CR>i", {noremap = true, silent = true})

    vim.api.nvim_set_keymap("n", "<C-q>", ":close<CR>", {noremap = true, silent = true})
    vim.api.nvim_set_keymap("i", "<C-q>", "<ESC>:close<CR>i", {noremap = true, silent = true})

    vim.api.nvim_set_keymap("n", "<A-z>", ":set wrap!<CR>", {noremap = true, silent = true})
    vim.api.nvim_set_keymap("i", "<A-z>", "<ESC>:set wrap!<CR>i", {noremap = true, silent = true})

    vim.api.nvim_set_keymap("n", "<A-t>", ":tabnew<CR>", {noremap = true, silent = true})
    vim.api.nvim_set_keymap("i", "<A-t>", "<ESC>:tabnew<CR>i", {noremap = true, silent = true})

    vim.api.nvim_set_keymap("n", "<A-q>", ":tabclose<CR>", {noremap = true, silent = true})
    vim.api.nvim_set_keymap("i", "<A-q>", "<ESC>:tabclose<CR>i", {noremap = true, silent = true})

    vim.api.nvim_set_keymap("n", "<A-Right>", ":tabnext<CR>", {noremap = true, silent = true})
    vim.api.nvim_set_keymap("i", "<A-Right>", "<ESC>:tabnext<CR>i", {noremap = true, silent = true})

    vim.api.nvim_set_keymap("n", "<A-Left>", ":tabprev<CR>", {noremap = true, silent = true})
    vim.api.nvim_set_keymap("i", "<A-Left>", "<ESC>:tabprev<CR>i", {noremap = true, silent = true})

    vim.api.nvim_set_keymap("n", "<A-j>", "<C-w><Left>", {noremap = true, silent = true})
    vim.api.nvim_set_keymap("i", "<A-j>", "<ESC><C-w><Left>", {noremap = true, silent = true})

    vim.api.nvim_set_keymap("n", "<A-l>", "<C-w><Right>", {noremap = true, silent = true})
    vim.api.nvim_set_keymap("i", "<A-l>", "<ESC><C-w><Right>", {noremap = true, silent = true})

    vim.api.nvim_set_keymap("n", "<A-i>", "<C-w><Up>", {noremap = true, silent = true})
    vim.api.nvim_set_keymap("i", "<A-i>", "<ESC><C-w><Up>", {noremap = true, silent = true})

    vim.api.nvim_set_keymap("n", "<A-k>", "<C-w><Down>", {noremap = true, silent = true})
    vim.api.nvim_set_keymap("i", "<A-k>", "<ESC><C-w><Down>", {noremap = true, silent = true})

    vim.api.nvim_set_keymap("n", "<A-a>", ":vertical resize -1<CR>", {noremap = true, silent = true})
    vim.api.nvim_set_keymap("i", "<A-a>", "<ESC>:vertical resize -1<CR>i", {noremap = true, silent = true})

    vim.api.nvim_set_keymap("n", "<A-d>", ":vertical resize +1<CR>", {noremap = true, silent = true})
    vim.api.nvim_set_keymap("i", "<A-d>", "<ESC>:vertical resize +1<CR>i", {noremap = true, silent = true})

    vim.api.nvim_set_keymap("n", "<A-w>", ":resize -1<CR>", {noremap = true, silent = true})
    vim.api.nvim_set_keymap("i", "<A-w>", "<ESC>:resize -1<CR>i", {noremap = true, silent = true})

    vim.api.nvim_set_keymap("n", "<A-s>", ":resize +1<CR>", {noremap = true, silent = true})
    vim.api.nvim_set_keymap("i", "<A-s>", "<ESC>:resize +1<CR>i", {noremap = true, silent = true})

    vim.api.nvim_set_keymap("n", "<A-1>", "1gt", {noremap = true, silent = true})
    vim.api.nvim_set_keymap("n", "<A-2>", "2gt", {noremap = true, silent = true})
    vim.api.nvim_set_keymap("n", "<A-3>", "3gt", {noremap = true, silent = true})
    vim.api.nvim_set_keymap("n", "<A-4>", "4gt", {noremap = true, silent = true})
    vim.api.nvim_set_keymap("n", "<A-5>", "5gt", {noremap = true, silent = true})
    vim.api.nvim_set_keymap("n", "<A-6>", "6gt", {noremap = true, silent = true})
    vim.api.nvim_set_keymap("n", "<A-7>", "7gt", {noremap = true, silent = true})
    vim.api.nvim_set_keymap("n", "<A-8>", "8gt", {noremap = true, silent = true})
    vim.api.nvim_set_keymap("n", "<A-9>", "9gt", {noremap = true, silent = true})

    vim.api.nvim_set_keymap("n", "<C-t>", ":tabnext #<CR>", {noremap = true, silent = true})

    vim.api.nvim_set_keymap("n", "<C-A-j>", ":-tabmove<CR>", {noremap = true, silent = true})
    vim.api.nvim_set_keymap("n", "<C-A-l>", ":+tabmove<CR>", {noremap = true, silent = true})

    vim.api.nvim_set_keymap("n", "<C-S-s>", ":SaveSession<CR>", {noremap = true, silent = true})
    vim.api.nvim_set_keymap("i", "<C-S-s>", "<ESC>:SaveSession<CR>i", {noremap = true, silent = true})
end

return M
