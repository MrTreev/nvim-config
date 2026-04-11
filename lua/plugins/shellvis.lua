return {
    "stumash/shellvis",
    config = function()
        local sv = require("shellvis")
        vim.keymap.set({ "v" }, "<leader>kf", function() sv.replaceWith("sed 's/\\s\\+\\([^:]\\+\\):.*/\\1=\\1,/g'") end)
    end,
}
