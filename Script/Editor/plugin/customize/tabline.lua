-- https://github.com/crispgm/nvim-tabline

local M = {}

function M.initialize()
    require "tabline".setup {
        enable = true,
        options = {
            section_separators = {"", ""},
            component_separators = {"", ""},
            max_bufferline_percent = 66, -- Set to nil by default, and it uses vim.o.columns * 2/3
            show_tabs_always = true, -- This shows tabs only when there are more than one tab or if the first tab is named
            show_devicons = true, -- This shows devicons in buffer section
            show_bufnr = false, -- This appends [bufnr] to buffer section,
            show_filename_only = true, -- Shows base filename only instead of relative path in filename
            modified_icon = "+ ", -- Change the default modified icon
            modified_italic = true, -- Set to true by default, this determines whether the filename turns italic if modified
            show_tabs_only = true -- This shows only tabs instead of tabs + buffers
        }
    }
end

return M
