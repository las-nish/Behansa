local M = {}

function M.ShowHelp()
    local data_file = os.getenv("BEHANSA_CONFIGURATION") .. "data/help_info.dat"
    local get_content = require("file").GetFileContent(data_file)

    print(get_content)
end

function M.ShortcutKeys()
    local data_file = os.getenv("BEHANSA_CONFIGURATION") .. "data/key_info.dat"
    local get_content = require("file").GetFileContent(data_file)

    print(get_content)
end

return M
