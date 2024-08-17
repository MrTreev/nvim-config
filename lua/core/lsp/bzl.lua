local lsp_config = require("lspconfig")
local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Bazel BUILD files
lsp_config.bzl.setup {
    capabilities = lsp_capabilities,
}
