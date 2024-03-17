-- https://github.com/rcarriga/nvim-notify
-- https://github.com/mrded/nvim-lsp-notify

local M = {}

function M.initialize()
    require("notify").history()

    require("notify").setup {
        stages = "fade",
        background_colour = "FloatShadow",
        timeout = 3000
    }

    vim.notify = require("notify")
    local severity = {
        "error",
        "warn",
        "info",
        "info"
    }

    vim.lsp.handlers["window/showMessage"] = function(err, method, params, client_id)
        vim.notify(method.message, severity[params.type])
    end

    local open = io.open
    local function readNoteFile(path)
        local file = open(path, "rb")
        if not file then
            return ' - No Note Detected !\n\n - Create a note file named ".behansa.note" in the $HOME directory'
        end

        local content = file:read "*a"
        file:close()
        return content
    end

    local noteFileContent = readNoteFile(".behansa.note")
    vim.notify(
        noteFileContent,
        "info",
        {
            title = " Note ( .behansa.note )",
            timeout = 10000
        }
    )
end

return M
