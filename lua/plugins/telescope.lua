return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim"
	},
	opts = {},
	lazy = false,
	setup = function()
		require("telescope").setup(opts)
		local builtin = require("telescope.builtin")
		vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
		vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
		vim.keymap.set('n', '<leader>fG', builtin.git_files, {})
		vim.keymap.set('n', '<leader>fg', function() builtin.grep_string({ search = vim.fn.input("Grep > ") }) end)
	end,
}
