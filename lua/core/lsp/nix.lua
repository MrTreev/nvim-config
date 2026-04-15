-- Markdown
vim.lsp.config("rnix", {
    capabilities = require('cmp_nvim_lsp').default_capabilities(),
})
vim.lsp.enable("rnix")
