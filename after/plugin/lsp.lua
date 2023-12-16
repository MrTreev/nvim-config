local cmp = require("cmp")
local luasnip = require("luasnip")

vim.opt.completeopt = { 'menu', 'menuone', 'noselect' }
vim.lsp.set_log_level("debug")

-- General Keymaps
vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("UserLspConfig", {}),
    callback = function(ev)
        vim.bo[ev.buf].omnifunc = "v:lua.buf.declaration"
        local opts = { buffer = ev.buf }
        vim.keymap.set("n", "<leader>lD", vim.lsp.buf.declaration, opts)
        vim.keymap.set("n", "<leader>ld", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "<leader>lj", vim.lsp.buf.hover, opts)
        vim.keymap.set("n", "<leader>lgi", vim.lsp.buf.implementation, opts)
        vim.keymap.set("n", "<leader>lh", vim.lsp.buf.signature_help, opts)
        vim.keymap.set({ "n", "v" }, "<leader>lca", vim.lsp.buf.code_action, opts)
        vim.keymap.set("n", "<leader>lD", vim.lsp.buf.type_definition, opts)
        vim.keymap.set("n", "<leader>lrn", vim.lsp.buf.rename, opts)
        vim.keymap.set("n", "<leader>lrr", vim.lsp.buf.references, opts)
        vim.keymap.set("n", "<leader>lf", function() vim.lsp.buf.format { async = true } end, opts)
    end
})

-- Completion
luasnip.config.setup {}
cmp.setup {
    snippet = { expand = function(args) luasnip.lsp_expand(args.body) end },
    window = { documentation = cmp.config.window.bordered() },
    sources = {
        { name = "path" },
        { name = "nvim_lsp", keyword_length = 1 },
        { name = "luasnip",  keyword_length = 2 },
        { name = "buffer",   keyword_length = 3 },
    },
    formatting = {
        fields = { "menu", "abbr", "kind" },
        format = function(entry, item)
            local menu_icon = { nvim_lsp = "λ", luasnip = "⋗", buffer = "Ω", path = "🖫", }
            item.menu = menu_icon[entry.source.name]
            return item
        end,
    },
    mapping = cmp.mapping.preset.insert {
        ["<C-p>"]     = cmp.mapping.select_prev_item(),
        ["<C-n>"]     = cmp.mapping.select_next_item(),
        ["<Up>"]      = cmp.mapping.select_prev_item(),
        ["<Down>"]    = cmp.mapping.select_next_item(),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<CR>"]      = cmp.mapping.confirm({ select = true }),
        ["<C-u>"]     = cmp.mapping.scroll_docs(-4),
        ["<C-d>"]     = cmp.mapping.scroll_docs(4),
        ["<C-f>"]     = cmp.mapping(function(fallback) if luasnip.jumpable(1) then luasnip.jump(1) else fallback() end end, { "i", "s" }),
        ["<C-b>"]     = cmp.mapping(function(fallback) if luasnip.jumpable(-1) then luasnip.jump(-1) else fallback() end end, { "i", "s" }),
        ["<Tab>"]     = cmp.mapping(function(fallback) if cmp.visible() then cmp.select_next_item() elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump() else fallback() end end, { "i", "s" }),
        ["<S-Tab>"]   = cmp.mapping(function(fallback) if cmp.visible() then cmp.select_prev_item() elseif luasnip.jumpable(-1) then
                luasnip.jump(-1) else fallback() end end, { "i", "s" }),
    }
}


-- Diagnostics
vim.diagnostic.config {
    virtual_text = true,
    signs = true,
    update_in_insert = true,
    underline = true,
    severity_sort = true,
    float = true,
}
vim.fn.sign_define('DiagnosticSignError', { texthl = 'DiagnosticSignError', text = '✘', numhl = '' })
vim.fn.sign_define('DiagnosticSignWarn', { texthl = 'DiagnosticSignWarn', text = '▲', numhl = '' })
vim.fn.sign_define('DiagnosticSignHint', { texthl = 'DiagnosticSignHint', text = '⚑', numhl = '' })
vim.fn.sign_define('DiagnosticSignInfo', { texthl = 'DiagnosticSignInfo', text = '»', numhl = '' })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
