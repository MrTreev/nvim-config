return {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
        vim.api.nvim_create_autocmd("LspAttach", {
            group = vim.api.nvim_create_augroup("UserLspConfig", {}),
            callback = function(ev)
                vim.bo[ev.buf].omnifunc = "v:lua.buf.declaration"
                vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = ev.buf })
                vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { buffer = ev.buf })
                vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { buffer = ev.buf })
                vim.keymap.set("n", "gr", vim.lsp.buf.references, { buffer = ev.buf })
                vim.keymap.set("n", "gT", vim.lsp.buf.type_definition, { buffer = ev.buf })
                vim.keymap.set("n", "<leader>kca", vim.lsp.buf.code_action, { buffer = ev.buf })
                vim.keymap.set("n", "<leader>kd", vim.diagnostic.open_float, { buffer = ev.buf })
                vim.keymap.set("n", "<leader>kf", function() vim.lsp.buf.format { async = true } end, { buffer = ev.buf })
                vim.keymap.set("n", "<leader>kh", vim.lsp.buf.hover, { buffer = ev.buf })
                vim.keymap.set("n", "<leader>kH", vim.lsp.buf.signature_help, { buffer = ev.buf })
                vim.keymap.set("n", "<leader>krn", vim.lsp.buf.rename, { buffer = ev.buf })
            end
        })
        vim.lsp.set_log_level("WARN")
    end,
}
