-- Bazel BUILD files
vim.lsp.config("starpls", {
    capabilities = require('cmp_nvim_lsp').default_capabilities(),
})
vim.lsp.enable("starpls")
