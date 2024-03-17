-- https://github.com/nvim-neo-tree/neo-tree.nvim

local M = {}

function M.initialize()
    require("neo-tree").setup(
        {
            enable_git_status = true,
            enable_diagnostics = true,
            sort_case_insensitive = false,
            filesystem = {
                filtered_items = {
                    hide_dotfiles = false,
                    hide_gitignored = false,
                    hide_hidden = false,
                    follow_current_file = true,
                    group_empty_dirs = false
                }
            }
        }
    )
end

return M
