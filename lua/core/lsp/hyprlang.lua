local lsp_config = require("lspconfig")
local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Hyprland
lsp_config.hyprls.setup {
    capabilities = lsp_capabilities,
}
