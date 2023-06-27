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
}

return plugins
