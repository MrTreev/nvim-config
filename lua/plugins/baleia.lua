return {
    "m00qek/baleia.nvim",
    lazy = false,
    init = function(_, opts)
        local baleia = require("baleia").setup(opts)
        vim.api.nvim_create_user_command(
            "AnsiEsc",
            function()
                baleia.once(vim.api.nvim_get_current_buf())
            end,
            {}
        )
    end,
}
