-- Python
vim.lsp.config("pylsp", {
    capabilities = require('cmp_nvim_lsp').default_capabilities(),
    settings = {
        pylsp = {
            plugins = {
                pylsp_mypy = {
                    live_mode = true,
                },
            },
        },
    },
})
