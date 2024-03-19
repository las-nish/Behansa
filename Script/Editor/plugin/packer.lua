local M = {}

function M.configure_packages()
    require("plugin.customize.auto_pair").initialize()
    require("plugin.customize.auto_save").initialize()
    require("plugin.customize.better_whitespace").initialize()
    require("plugin.customize.cmp_menu").initialize()
    require("plugin.customize.git").initialize()
    require("plugin.customize.lualine").initialize()
    require("plugin.customize.markdown_preview").initialize()
    require("plugin.customize.mason").initialize()
    require("plugin.customize.native_lsp").initialize()
    require("plugin.customize.neo_tree").initialize()
    require("plugin.customize.notify").initialize()
    require("plugin.customize.plantuml_preview").initialize()
    require("plugin.customize.symbol_outline").initialize()
    require("plugin.customize.tabline").initialize()
    require("plugin.customize.telescope").initialize()
    require("plugin.customize.terminal").initialize()
    require("plugin.customize.theme").initialize()
    require("plugin.customize.tree_sitter").initialize()
    require("plugin.customize.xolox").initialize()
end

function M.initialize_packages()
    return require("packer").startup(
        function(use)
            use "wbthomason/packer.nvim"

            -- Packages for Appearance

            use "projekt0n/github-nvim-theme"
            use "uloco/bluloco.nvim"

            -- Packages for Customization

            use "hoob3rt/lualine.nvim"
            use "crispgm/nvim-tabline"
            use "rcarriga/nvim-notify"
            use "mrded/nvim-lsp-notify"
            use "rktjmp/lush.nvim"

            -- Packages for AI

            use "github/copilot.vim"
            -- use "Exafunction/codeium.vim"

            -- Packages for Productivity

            use "lewis6991/gitsigns.nvim"
            use "nvim-neo-tree/neo-tree.nvim"
            use "nvim-lua/plenary.nvim"
            use "nvim-tree/nvim-web-devicons"
            use "MunifTanjim/nui.nvim"
            use "akinsho/toggleterm.nvim"
            use({"nvim-telescope/telescope-fzf-native.nvim", run = "make"})
            use "nvim-telescope/telescope.nvim"
            use "nvim-treesitter/nvim-treesitter"
            use "williamboman/mason.nvim"
            use "williamboman/mason-lspconfig.nvim"
            use "neovim/nvim-lspconfig"
            use "hrsh7th/cmp-nvim-lsp"
            use({"glepnir/lspsaga.nvim", branch = "main"})
            use "hrsh7th/cmp-buffer"
            use "hrsh7th/cmp-path"
            use "hrsh7th/cmp-cmdline"
            use "hrsh7th/nvim-cmp"
            use "mg979/vim-visual-multi"
            use "windwp/nvim-autopairs"
            use "ntpeters/vim-better-whitespace"
            use "xolox/vim-misc"
            use "xolox/vim-session"
            use "simrat39/symbols-outline.nvim"
            use "Pocco81/auto-save.nvim"
            use "tyru/open-browser.vim"

            -- Packages for Languages

            use "gisphm/vim-gitignore"
            use "vim-scripts/bnf.vim"
            use "nfischer/vim-ohm"
            use "dylon/vim-antlr"
            use "aklt/plantuml-syntax"
            use "fatih/vim-go"
            use "othree/html5.vim"
            use "hail2u/vim-css3-syntax"
            use "vim-scripts/Sass"
            use "leshill/vim-json"
            use "vim-scripts/c.vim"
            use "bfrg/vim-cpp-modern"
            use "pangloss/vim-javascript"
            use "dart-lang/dart-vim-plugin"
            use "thosakwe/vim-flutter"
            use "iosmanthus/vim-nasm"
            use "lazywei/vim-matlab"
            use "briancollins/vim-jst"
            use "omnisharp/omnisharp-vim"
            use "lifepillar/pgsql.vim"

            -- Packages for Language Options

            use(
                {
                    "iamcco/markdown-preview.nvim",
                    run = function()
                        vim.fn["mkdp#util#install"]()
                    end
                }
            )

            use "weirongxu/plantuml-previewer.vim"

            use "rhysd/vim-clang-format"
        end
    )
end

return M
