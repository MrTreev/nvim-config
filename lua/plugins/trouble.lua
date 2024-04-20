return {
    "folke/trouble.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    opts = {},
    lazy = false,
    keys = function()
        local trouble = require("trouble")
        return {
            { "<leader>tt", function() trouble.toggle() end },
            { "<leader>tw", function() trouble.toggle("workspace_diagnostics") end },
            { "<leader>td", function() trouble.toggle("document_diagnostics") end },
            { "<leader>tq", function() trouble.toggle("quickfix") end },
            { "<leader>tl", function() trouble.toggle("loclist") end },
            { "<leader>tn", function() trouble.next({ skip_groups = true, jump = true }); end },
            { "<leader>tp", function() trouble.previous({ skip_groups = true, jump = true }); end },
            { "gR",         function() trouble.toggle("lsp_references") end },
        }
    end,
}
