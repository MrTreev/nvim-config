local lsp_config = require("lspconfig")
local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Rust
lsp_config.rust_analyzer.setup {
    capabilities = lsp_capabilities,
}
