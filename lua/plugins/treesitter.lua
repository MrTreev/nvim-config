return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter-context"
	},
	tag = "v0.9.1",
	build = ":TSUpdate",
	lazy = false,
	opts = {
		ensure_installed = { "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },
		sync_install = false,
		auto_install = true,
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = { "markdown" },
		},
		modules = {},
		ignore_install = {},
	},
}
