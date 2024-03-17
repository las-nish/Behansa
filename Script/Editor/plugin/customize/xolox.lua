-- https://github.com/xolox/vim-session

local M = {}

function M.initialize()
    vim.cmd("let g:session_menu = 1")
    vim.cmd("let g:session_command_aliases = 1")
    vim.cmd("let g:session_default_name='_'")
    vim.cmd("let g:session_lock_enabled = 0")
    vim.cmd("let g:session_extension='.nvim_session'")
    vim.cmd("let g:session_autoload='no'")
    vim.cmd("let g:session_autosave='yes'")
    vim.cmd("let g:session_directory='" .. os.getenv("BEHANSA_SESSION") .. "'")
    vim.cmd("let g:session_lock_directory='" .. os.getenv("BEHANSA_SESSION") .. "'")

    vim.cmd("set sessionoptions+=tabpages,globals")
    vim.cmd("set sessionoptions+=resize")
    vim.cmd("set sessionoptions+=winpos")
    vim.cmd("set sessionoptions+=folds")
    vim.cmd("set sessionoptions-=buffers")
    vim.cmd("set sessionoptions-=options")
    vim.cmd("set sessionoptions-=help")
end

return M
