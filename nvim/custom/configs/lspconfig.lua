local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

lspconfig.gopls.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {"go", "gomod", "gowork", "gotmpl"},
    root_dir = lspconfig.util.root_pattern("go.work", "go.mod", ".git"),
    single_file_support = true,
})

lspconfig.pyright.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {"python"},
    settings = {
        python = {
            analysis = {
                autoSearchPaths = true,
                diagnosticMode = "workspace",
                useLibraryForCodeTypes = true
            },
        },
    },
    single_file_support = true,
});
