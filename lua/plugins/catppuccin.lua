return {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    opts = {
        flavour = "mocha",
        transparent_background = true,
        integrations = {
            cmp = true,
            gitsigns = true,
            harpoon = true,
            markdown = true,
            mason = true,
            nvimtree = true,
            telescope = { enabled = true, style = "nvchad" },
            treesitter = true,
            native_lsp = {
                enabled = true,
                virtual_text = {
                    errors = { "italic" },
                    hints = { "italic" },
                    warnings = { "italic" },
                    information = { "italic" },
                },
                underlines = {
                    errors = { "underline" },
                    hints = { "underline" },
                    warnings = { "underline" },
                    information = { "underline" },
                },
                inlay_hints = {
                    background = true,
                },
            },
        },
    },
    config = function(opts)
        require('catppuccin').setup(opts)
        vim.cmd.colorscheme("catppuccin")
    end,
}
