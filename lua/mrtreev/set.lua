-- Settings file

vim.opt.clipboard:append { "unnamedplus" }


-- General
vim.opt.colorcolumn = "0"
vim.opt.expandtab = true
vim.opt.guicursor = ""
vim.opt.guioptions = a
vim.opt.hidden = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.isfname:append("@-@")
vim.opt.laststatus = 3
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 8
vim.opt.shiftwidth = 4
vim.opt.showtabline = 1
vim.opt.signcolumn = "yes"
vim.opt.smartindent = true
vim.opt.softtabstop = 4
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.tabstop = 4
vim.opt.termguicolors = true
vim.opt.title = true
vim.opt.updatetime = 50
vim.opt.wrap = false



-- Undo System
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.undodir = os.getenv("HOME") .. "/.local/share/nvim/undodir"
vim.opt.undofile = true

-- Spell-Checking
vim.opt.spelllang = {
    "en_au",
    "en-rare",
    "en_gb"
}

-- Files
vim.opt.wildignore = {
    '*.o',
    '*.a',
    '*.pyc',
    '__pycache__',
    'node_modules'
}

-- Netrw
vim.g.netrw_altv = 1
vim.g.netrw_banner = 0
vim.g.netrw_browse_split = 4
vim.g.netrw_liststyle = 3
