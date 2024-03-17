-- https://github.com/Pocco81/auto-save.nvim

local M = {}

function M.initialize()
    require("auto-save").setup {
        enabled = true,
        trigger_events = {"InsertLeave"},
        write_all_buffers = false
    }
end

return M
