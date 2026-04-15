return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter-context"
    },
    build = ":TSUpdate",
}
