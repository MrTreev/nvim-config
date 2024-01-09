local lsp_config = require("lspconfig")
local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Lua
lsp_config.lua_ls.setup {
    capabilities = lsp_capabilities,
    settings = { Lua = {
        runtime = { version = "LuaJIT" },
        diagnostics = { globals = { "vim", "require" } },
        workspace = { library = vim.api.nvim_get_runtime_file("", true) },
        telemetry = { enable = false },
    } }
}
