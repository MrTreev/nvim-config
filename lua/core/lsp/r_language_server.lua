local lsp_config = require("lspconfig")
local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

-- R and RMarkdown
lsp_config.r_language_server.setup {
    capabilities = lsp_capabilities,
}
