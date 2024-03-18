local M = {}

function M.GetFileContent(path)
    local open = io.open
    local file = open(path, "rb")
    if not file then
        return nil
    end

    local content = file:read "*a"
    file:close()

    return content
end

return M
