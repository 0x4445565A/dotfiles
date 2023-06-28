local plugins = {
    {
        "fedepujol/move.nvim",
        lazy=false
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.configs.lspconfig"
        end,
    },
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "rust-analyzer",
                "gopls",
                "pyright",
            }
        }
    },
    {
        "rust-lang/rust.vim",
        ft = "rust",
        init = function ()
          vim.g.rustfmt_autosave = 1
        end
    },
    {
        "simrat39/rust-tools.nvim",
        ft="rust",
        dependencies = "neovim/nvim-lspconfig",
        opts = function ()
            return require "custom.configs.rust-tools"
        end,
        config = function(_, opts)
            require('rust-tools').setup(opts)
            require('rust-tools').inlay_hints.enable()
        end
    },
    {
        "ray-x/go.nvim",
        dependencies = {  -- optional packages
            "ray-x/guihua.lua",
            "nvim-treesitter/nvim-treesitter",
        },
        config = function()
            require("go").setup()
        end,
        event = {"CmdlineEnter"},
        ft = {"go", 'gomod'},
        build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
    }
}

return plugins
