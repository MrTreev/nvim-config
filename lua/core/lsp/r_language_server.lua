-- R and RMarkdown
require("lspconfig").r_language_server.setup({
    capabilities = require('cmp_nvim_lsp').default_capabilities(),
})
