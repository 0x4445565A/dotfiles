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
    }
}

return plugins
