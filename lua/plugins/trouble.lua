return {
	"folke/trouble.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons"
	},
	lazy = false,
	opts = {},
	setup = function()
		local trouble = require("trouble")
		vim.keymap.set('n', "<leader>tt", function() trouble.toggle() end)
		vim.keymap.set('n', "<leader>tw", function() trouble.toggle("workspace_diagnostics") end)
		vim.keymap.set('n', "<leader>td", function() trouble.toggle("document_diagnostics") end)
		vim.keymap.set('n', "<leader>tq", function() trouble.toggle("quickfix") end)
		vim.keymap.set('n', "<leader>tl", function() trouble.toggle("loclist") end)
		vim.keymap.set('n', "gR", function() trouble.toggle("lsp_references") end)
		trouble.setup(opts)
	end,
}
