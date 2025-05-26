return {
    'nmder/nabla.nvim',
    dependencies = {
        "williamboman/mason.nvim",
    },
    lazy = true,
    keys = {
        { "<leader>kp", function() require("nabla").popup() end, desc = "Nabla Popup" },
        { "<leader>klp", function() require("nabla").toggle_virt() end, desc = "Nabla toggle" },
    },
}
