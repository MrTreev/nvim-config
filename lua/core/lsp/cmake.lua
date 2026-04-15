-- C and C++
vim.lsp.config("cmake", {
    capabilities = require('cmp_nvim_lsp').default_capabilities(),
})
vim.lsp.enable("cmake")
