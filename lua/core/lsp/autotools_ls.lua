-- Makefiles
vim.lsp.config("autotools_ls", {
    capabilities = require('cmp_nvim_lsp').default_capabilities(),
})
vim.lsp.enable("autotools_ls")
