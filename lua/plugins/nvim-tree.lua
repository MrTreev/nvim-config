return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons"
	},
	lazy = false,
	keys = {
		{ "<leader>fe", "<cmd>NvimTreeToggle<cr>", desc = "nvim-tree toggle" },
	},
	opts = {},
	config = function()
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1
		require("nvim-tree").setup(opts)
	end,
}
