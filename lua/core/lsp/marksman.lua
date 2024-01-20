local lsp_config = require("lspconfig")
local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Markdown
lsp_config.marksman.setup {
	capabilities = lsp_capabilities,
}
