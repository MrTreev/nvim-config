local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
local uv = require("luv")
if not uv.fs_statfs(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup("plugins")
