require("mrtreev.set")
require("mrtreev.remaps")
require("mrtreev.packer")

local augroup = vim.api.nvim_create_augroup
local mrtreev_group = augroup('mrtreev', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

function R(name)
    require("plenary.reload").reload_module(name)
end

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})

autocmd({"BufWritePre"}, {
    group = mrtreev_group,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})
