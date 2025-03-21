return {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter-context"
    },
    build = ":TSUpdate",
    config = function()
        vim.treesitter.language.register('hyprlang', 'conf')
        vim.treesitter.language.register('markdown', 'rmd')
        vim.treesitter.language.register('c', 'dox')
        require("nvim-treesitter.configs").setup({
            ensure_installed = { "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "hyprlang", "latex" },
            sync_install = false,
            auto_install = true,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = { "markdown" },
            },
            indent = { enable = true },
            modules = {},
            ignore_install = {},
        })
    end,
}
