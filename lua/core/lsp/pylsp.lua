local lsp_config = require("lspconfig")
local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Python
lsp_config.pylsp.setup {
	capabilities = lsp_capabilities,
}
