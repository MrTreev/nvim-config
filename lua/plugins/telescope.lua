return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim"
    },
    lazy = false,
    config = function()
        require("telescope").setup({})
    end,
    keys = function()
        local builtin = require("telescope.builtin")
        return {
            { '<leader>fh', builtin.help_tags },
            { '<leader>ff', builtin.find_files },
            { '<leader>fG', builtin.git_files },
            { '<leader>fg', function() builtin.grep_string({ search = vim.fn.input("Grep > ") }) end },
        }
    end,
}
