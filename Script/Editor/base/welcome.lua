-- ASCII Art from https://textkool.com/en/ascii-art-generator (ANSI Shadow)

local M = {}

function M.center_text()
    local header = {
        "",
        "",
        "██████╗ ███████╗██╗  ██╗ █████╗ ███╗   ██╗███████╗ █████╗ ",
        "██╔══██╗██╔════╝██║  ██║██╔══██╗████╗  ██║██╔════╝██╔══██╗",
        "██████╔╝█████╗  ███████║███████║██╔██╗ ██║███████╗███████║",
        "██╔══██╗██╔══╝  ██╔══██║██╔══██║██║╚██╗██║╚════██║██╔══██║",
        "██████╔╝███████╗██║  ██║██║  ██║██║ ╚████║███████║██║  ██║",
        "╚═════╝ ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝",
        "",
        "",
        "──── Software is like Sex, It's better when it's free ────",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "┌────────────────────────────────────────────────────────┐",
        "│                                                        │",
        "│   🌀  New File                                     n   │",
        "│                                                        │",
        "│   🔮  Open Folder                                  f   │",
        "│                                                        │",
        "│   🚀  Projects                                     p   │",
        "│                                                        │",
        "│   🎡  Update                                       u   │",
        "│                                                        │",
        "│   🎾  Shortcuts                                    s   │",
        "│                                                        │",
        "│   🛸  Configuration                                c   │",
        "│                                                        │",
        "│   🎎  Help                                         h   │",
        "│                                                        │",
        "└────────────────────────────────────────────────────────┘",
        "",
        "",
        "Behansa IDE v1.0.0",
        "",
        "An Opensource Project from Tvative Opensource ( https://tvative.com )"
    }

    local width = vim.api.nvim_win_get_width(0)
    local centered_lines = {}

    for _, line in ipairs(header) do
        local center = math.floor((width - vim.fn.strdisplaywidth(line)) / 2)
        table.insert(centered_lines, string.rep(" ", center) .. line)
    end

    table.insert(centered_lines, "")

    vim.opt_local.modifiable = true
    vim.api.nvim_buf_set_lines(0, 0, -1, false, centered_lines)
    vim.opt_local.modifiable = false
end

function M.welcome_screen()
    vim.opt_local.filetype = "welcome_screen"
    vim.opt_local.bufhidden = "wipe"
    vim.opt_local.buftype = "nofile"
    vim.opt_local.buflisted = false
    vim.opt_local.cursorcolumn = false
    vim.opt_local.cursorline = false
    vim.opt_local.list = false
    vim.opt_local.number = false
    vim.opt_local.swapfile = false
    vim.opt_local.relativenumber = false

    vim.api.nvim_command("enew")
    vim.api.nvim_buf_set_lines(0, 0, -1, false, {})

    M.center_text()

    vim.opt_local.modifiable = false
    vim.opt_local.modified = false

    vim.api.nvim_buf_set_keymap(0, "n", "e", ":enew<CR>", {silent = true, noremap = true})
    vim.api.nvim_buf_set_keymap(0, "n", "i", ":enew<CR><CR>", {silent = true, noremap = true})
    vim.api.nvim_buf_set_keymap(0, "n", "o", ":enew<CR><CR>", {silent = true, noremap = true})

    -- vim.api.nvim_buf_set_keymap(0, 'n', 'n', ':set filetype?<CR>', {silent = true, noremap = true})
    -- vim.api.nvim_buf_set_keymap(0, 'n', 'f', ':echo "Pressed f"<CR>', {silent = true, noremap = true})
    vim.api.nvim_buf_set_keymap(0, "n", "p", ":OpenSession<CR>", {})
    vim.api.nvim_buf_set_keymap(0, "n", "u", ":PackerUpdate<CR><CR>", {})
    vim.api.nvim_buf_set_keymap(0, "n", "s", ':lua require("base.help").ShortcutKeys()<CR>', {})
    vim.api.nvim_buf_set_keymap(
        0,
        "n",
        "c",
        ':lua vim.cmd(":cd ' .. os.getenv("BEHANSA_CONFIGURATION") .. '")<CR><CR>',
        {}
    )
    vim.api.nvim_buf_set_keymap(0, "n", "h", ':lua require("base.help").ShowHelp()<CR>', {})
end

return M
