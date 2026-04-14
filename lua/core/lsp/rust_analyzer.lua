-- Rust
vim.lsp.config("rust_analyzer", {
    capabilities = require('cmp_nvim_lsp').default_capabilities(),
})
