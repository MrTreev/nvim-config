return {
    "R-nvim/R.nvim",
    lazy = false,
    config = function()
        local opts = {
            R_args = { "--no-save", "--quiet" },
            R_auto_start = 1,
            R_external_term = 1,
        }
        require("r").setup(opts)
    end,
}
