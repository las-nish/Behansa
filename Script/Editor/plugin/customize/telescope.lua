-- https://github.com/nvim-telescope/telescope.nvim
-- https://github.com/nvim-telescope/telescope-fzf-native.nvim

local M = {}

function M.initialize()
    local telescope_setup, telescope = pcall(require, "telescope")
    if not telescope_setup then
        return
    end

    local actions_setup, actions = pcall(require, "telescope.actions")
    if not actions_setup then
        return
    end

    telescope.setup(
        {
            defaults = {
                mappings = {
                    i = {
                        ["<C-k>"] = actions.move_selection_previous, -- Move to prev result
                        ["<C-j>"] = actions.move_selection_next, -- Move to next result
                        ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist -- Send selected to quickfixlist
                    }
                }
            }
        }
    )

    telescope.load_extension("fzf")
end

return M
