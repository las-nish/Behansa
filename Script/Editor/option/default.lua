local M = {}

function M.set_default_options()
    vim.g.mapleader = " " -- Set leader
    vim.g.maplocalleader = " " -- Set leader

    vim.opt.relativenumber = true -- Show relative line numbers
    vim.opt.number = true -- Show absolute line number on the current line
    vim.opt.tabstop = 2 -- Number of spaces tabs count for
    vim.opt.shiftwidth = 2 -- Size of an indent
    vim.opt.expandtab = true -- Use spaces instead of tabs
    vim.opt.autoindent = true -- Good auto indent
    vim.opt.wrap = false -- No wrap lines
    vim.opt.ignorecase = true -- Case insensitive searching
    vim.opt.smartcase = true -- Case-sensitive if expression contains upper case
    vim.opt.cursorline = true -- Highlight current line
    vim.opt.termguicolors = true -- True color support
    vim.opt.signcolumn = "yes" -- Always show the sign column
    vim.opt.clipboard:append("unnamedplus") -- Use the system clipboard
    vim.opt.list = false -- Show some invisible characters
    vim.opt.guitablabel = "%t\\ %m" -- Tab label
    vim.opt.numberwidth = 4 -- Line number column width
    vim.opt.mouse = "a" -- Enable mouse support
    vim.opt.showmatch = true -- Show matching brackets

    vim.opt.belloff = "all" -- No bells
    vim.opt.autoread = true -- Auto-read files when changed from the outside
    vim.opt.fixendofline = false -- Don't add a new line at the end of the file
    vim.opt.backup = false -- No backup files
    vim.opt.swapfile = false -- No swap files
    vim.opt.undofile = false -- No undo files
    vim.opt.wrap = false -- Disable word wrap for all windows

    vim.cmd("behave mswin")
end

return M
