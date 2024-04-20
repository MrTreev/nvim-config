return {
    "theprimeagen/harpoon",
    dependencies = {
        'nvim-lua/plenary.nvim'
    },
    lazy = false,
    opts = {},
    keys = function()
        require("harpoon").setup(opts)
        local mark = require("harpoon.mark")
        local ui = require("harpoon.ui")
        return {
            { "<leader>ha", mark.add_file },
            { "<leader>he", ui.toggle_quick_menu },
            { "<leader>hn", function() ui.nav_next() end },
            { "<leader>hp", function() ui.nav_prev() end },
            { "<leader>h1", function() ui.nav_file(1) end },
            { "<leader>h2", function() ui.nav_file(2) end },
            { "<leader>h3", function() ui.nav_file(3) end },
            { "<leader>h4", function() ui.nav_file(4) end },
            { "<leader>h5", function() ui.nav_file(5) end },
            { "<leader>h6", function() ui.nav_file(6) end },
            { "<leader>h7", function() ui.nav_file(7) end },
            { "<leader>h8", function() ui.nav_file(8) end },
            { "<leader>h9", function() ui.nav_file(9) end },
            { "<leader>h0", function() ui.nav_file(10) end },
        }
    end,
    setup = {},
}
