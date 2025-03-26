return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    lazy = false,
    init = function()
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1
    end,
    keys = {
        { "<leader>fe",  "<cmd>NvimTreeToggle<cr>",   desc = "nvim-tree toggle" },
        { "<leader>fof", "<cmd>NvimTreeFindFile<cr>", desc = "nvim-tree find current file" },
        { "<leader>foo", "<cmd>NvimTreeFocus<cr>",    desc = "nvim-tree focus" },
    },
    opts = {
        sync_root_with_cwd = true,
        trash = {
            cmd = "trash-put",
        },

    },
}
