local lsp_config = require("lspconfig")
local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

-- C and C++
lsp_config.clangd.setup {
	capabilities = lsp_capabilities,
}
