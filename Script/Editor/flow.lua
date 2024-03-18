local M = {}

function M.Perform()
    require("base.version").show_version()

    require("option.default").set_default_options()

    require("keymap.default").set_default_keymaps()
    require("keymap.plugin").set_plugin_keymaps()
    require("keymap.leader").set_leader_keymaps()

    require("plugin.packer").initialize_packages()
    require("plugin.packer").configure_packages()

    vim.api.nvim_create_autocmd(
        "VimEnter",
        {
            callback = function()
                require("base.welcome").welcome_screen()
            end
        }
    )
end

return M
