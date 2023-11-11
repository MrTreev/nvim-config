local lspconfig = require("lspconfig")

lspconfig.rust_analyzer.setup {}
lspconfig.clangd.setup {}
lspconfig.marksman.setup {}
lspconfig.lua_ls.setup { settings = { Lua = {
    runtime = { version = 'LuaJIT' },
    diagnostics = { globals = { 'vim', 'require' }},
    workspace = { library = vim.api.nvim_get_runtime_file("", true) },
    telemetry = { enable = false },
}}}
lspconfig.pylsp.setup {
    settings = { configurationSources = {"flake8"}},
}

vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)

vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("UserLspConfig", {}),
    callback = function(ev)
        vim.bo[ev.buf].omnifunc = "v:lua.buf.declaration"

        local opts = { buffer = ev.buf }
        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
        vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)

        vim.keymap.set({ 'n', 'v' }, "<leader>vca", vim.lsp.buf.code_action, opts)
        vim.keymap.set("n", "<leader>vD", vim.lsp.buf.type_definition, opts)
        vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, opts)
        vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references, opts)
        vim.keymap.set("n", "<leader>f", function() vim.lsp.buf.format { async = true } end, opts)
    end
})
