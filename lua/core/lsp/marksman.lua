-- Markdown
vim.lsp.config("marksman", {
    capabilities = require('cmp_nvim_lsp').default_capabilities(),
})
vim.lsp.enable("marksman")
