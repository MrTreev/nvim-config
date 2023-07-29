vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
	use{ 'wbthomason/packer.nvim' }
	use{ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }
	use{ "nvim-treesitter/playground" }
	use{ "theprimeagen/harpoon" }
	use{ "theprimeagen/refactoring.nvim" }
	use{ "mbbill/undotree" }
	use{ "tpope/vim-fugitive" }
	use{ "lewis6991/gitsigns.nvim" }
	use{ "nvim-treesitter/nvim-treesitter-context" }
	use{ "nvim-telescope/telescope.nvim", tag = '0.1.0', requires = { {'nvim-lua/plenary.nvim'} } }
    use{ "catppuccin/nvim", as = 'catppucin', config = function() vim.cmd('colorscheme catppuccin') end }
	use{ "folke/trouble.nvim", config = function() require("trouble").setup{ icons = false } end }
	use{ "jghauser/auto-pandoc.nvim", requires = 'nvim-lua/plenary.nvim', config = function() require('auto-pandoc') end }
	use{ "nvim-lualine/lualine.nvim", requires = { 'nvim-tree/nvim-web-devicons', opt = true } }
	use{ "ellisonleao/glow.nvim", config = function() require("glow").setup() end }
	use{ "aklt/plantuml-syntax" }
	use{ "tyru/open-browser.vim" }
	use{ "weirongxu/plantuml-previewer.vim" }
    use{ "epwalsh/obsidian.nvim" }
	use{ "VonHeikemen/lsp-zero.nvim",
		branch = 'v1.x',
		requires = {
			{'neovim/nvim-lspconfig'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'saadparwaiz1/cmp_luasnip'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-nvim-lua'},
			{'L3MON4D3/LuaSnip'},
			{'rafamadriz/friendly-snippets'},
		}
	}
end)

