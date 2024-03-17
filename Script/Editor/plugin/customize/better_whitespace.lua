-- https://github.com/ntpeters/vim-better-whitespace

local M = {}

function M.initialize()
    vim.g.better_whitespace = {
        enabled = 1,
        strip_whitespace_on_save = 1,
        strip_whitespace_confirm = 0,
        strip_only_modified_lines = 0,
        strip_whitelines_at_eof = 1
    }

    vim.cmd("let g:better_whitespace_filetypes_blacklist=['welcome_screen']")
end

return M
