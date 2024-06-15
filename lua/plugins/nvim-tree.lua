return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    lazy = false,
    keys = {
        { "<leader>fe", "<cmd>NvimTreeToggle<cr>", desc = "nvim-tree toggle" },
        { "<leader>fof", "<cmd>NvimTreeFindFile<cr>", desc = "nvim-tree find current file" },
        { "<leader>foo", "<cmd>NvimTreeFocus<cr>", desc = "nvim-tree focus" },
    },
    config = function()
        local opts = {}
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1
        require("nvim-tree").setup(opts)
    end,
}
