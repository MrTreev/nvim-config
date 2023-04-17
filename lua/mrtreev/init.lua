require("mrtreev.set")
require("mrtreev.remaps")
require("mrtreev.packer")

local augroup = vim.api.nvim_create_augroup
local treev_group = augroup('treev', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

function R(name)
	require("plenary.reload").reload_module(name)
end

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
