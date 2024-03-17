-- https://github.com/iamcco/markdown-preview.nvim

local M = {}

function M.initialize()
    vim.cmd [[
        "
            let g:mkdp_auto_start = 0
            let g:mkdp_auto_close = 1
            let g:mkdp_refresh_slow = 0
            let g:mkdp_command_for_global = 0
            let g:mkdp_open_to_the_world = 0
            let g:mkdp_open_ip = ''
            let g:mkdp_browser = 'google-chrome'
            let g:mkdp_echo_preview_url = 1
            let g:mkdp_page_title = '${name}'
            let g:mkdp_filetypes = ['markdown']
            let g:mkdp_theme = 'light'
        "
    ]]
end

return M
