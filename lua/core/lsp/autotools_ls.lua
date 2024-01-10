local lsp_config = require("lspconfig")
local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Makefiles
lsp_config.autotools_ls.setup {
    capabilities = lsp_capabilities,
}
