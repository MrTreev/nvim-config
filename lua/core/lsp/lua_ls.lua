-- Lua
vim.lsp.config("lua_ls", {
    capabilities = require('cmp_nvim_lsp').default_capabilities(),
    settings = {
        Lua = {
            runtime = {
                version = "LuaJIT",
            },
            workspace = {
                checkThirdParty = true,
                library = vim.api.nvim_get_runtime_file("", true),
            },
            telemetry = {
                enable = false,
            },
        }
    }
})
