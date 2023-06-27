local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

lspconfig.rust_analyzer.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {"rust"},
    root_dir = lspconfig.util.root_pattern("Cargo.toml"),
    settings = {
        ["rust_analyzer"] = {
            cargo = {
                allFeatures = true,
            },
        },
    },
})


lspconfig.gopls.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {"go", "gomod", "gowork", "gotmpl"},
    root_dir = lspconfig.util.root_pattern("go.work", "go.mod", ".git"),
    single_file_support = true,
})
