-- Lua
require("lspconfig").lua_ls.setup({
    capabilities = require('cmp_nvim_lsp').default_capabilities(),
    settings = { Lua = {
        runtime = { version = "LuaJIT" },
        diagnostics = { globals = { "vim", "require" } },
        workspace = { library = vim.api.nvim_get_runtime_file("", true) },
        telemetry = { enable = false },
    } }
})
