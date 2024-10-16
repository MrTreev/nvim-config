-- Bazel BUILD files
require("lspconfig").bzl.setup({
    capabilities = require('cmp_nvim_lsp').default_capabilities(),
})
