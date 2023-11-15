local lsp_config = require("lspconfig")
local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Rust
lsp_config.rust_analyzer.setup {
    capabilities = lsp_capabilities,
}

-- C and C++
lsp_config.clangd.setup {
    capabilities = lsp_capabilities,
}

-- Markdown
lsp_config.marksman.setup {
    capabilities = lsp_capabilities,
}

-- Lua
lsp_config.lua_ls.setup {
    capabilities = lsp_capabilities,
    settings = { Lua = {
        runtime = { version = "LuaJIT" },
        diagnostics = { globals = { "vim", "require" }},
        workspace = { library = vim.api.nvim_get_runtime_file("", true) },
        telemetry = { enable = false },
    }}
}

-- Python
lsp_config.pylsp.setup {
    capabilities = lsp_capabilities,
    settings = {
        configurationSources = {"pycodestyle"},
        plugins = {
            autopep8 = { enabled = true },
        }
    },
}

