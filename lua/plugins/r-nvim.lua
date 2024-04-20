return {
    "R-nvim/R.nvim",
    lazy = false,
    config = function()
        local opts = {
            R_args = { "--no-save", "--quiet" },
        }
        require("r").setup(opts)
    end,
}
