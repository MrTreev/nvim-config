vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
    -- Packer can manage itself
    use { "wbthomason/packer.nvim" }
    use { "catppuccin/nvim", as = "catppuccin" }

    use { "nvim-lua/plenary.nvim" }
    use { "nvim-telescope/telescope.nvim" }
    use { "folke/trouble.nvim", config = function() require("trouble").setup { icons = false, } end }

    use { "nvim-treesitter/nvim-treesitter", run = function() local ts_update = require('nvim-treesitter.install').update({with_sync = true}) ts_update() end }
    use { "nvim-treesitter/nvim-treesitter-context" }
    use { "nvim-treesitter/playground" }
    use { "neovim/nvim-lspconfig" }
    use { "williamboman/mason.nvim" }
    use { "williamboman/mason-lspconfig.nvim" }
    use { "hrsh7th/nvim-cmp" }
    use { "hrsh7th/cmp-buffer" }
    use { "hrsh7th/cmp-path" }
    use { "hrsh7th/cmp-nvim-lsp" }
    use { "hrsh7th/cmp-nvim-lua" }
    use { "L3MON4D3/LuaSnip" }

    use { "theprimeagen/harpoon" }
    use { "theprimeagen/refactoring.nvim" }

    use { "mbbill/undotree" }

    use { "lewis6991/gitsigns.nvim" }
    use { "nvim-tree/nvim-web-devicons" }
    use { "tpope/vim-fugitive" }
    use { "nvim-lualine/lualine.nvim" }
end)
