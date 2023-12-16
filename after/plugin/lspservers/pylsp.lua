local lsp_config = require("lspconfig")
local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Python
lsp_config.pylsp.setup {
    capabilities = lsp_capabilities,
    settings = {
        configurationSources = { "pycodestyle" },
        plugins = {
            autopep8 = { enabled = true },
            pycodestyle = {
                enabled = true,
                ignore = { "E501" },
                indentSize = 4,
            },
        },
    },
}
