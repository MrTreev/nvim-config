-- Settings file

vim.opt.clipboard:append { "unnamedplus" }

vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.undodir = os.getenv("HOME") .. "/.local/share/nvim/undodir"
vim.opt.undofile = true

vim.opt.tabstop = 4

vim.opt.guicursor = ""
vim.opt.guioptions = a
vim.opt.termguicolors = true

vim.opt.mouse = a
vim.opt.mousescroll = "ver:4,hor:8"

vim.opt.hidden = true
vim.opt.laststatus = 3
vim.opt.scrolloff = 8
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.title = true

vim.opt.colorcolumn = "0"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.showtabline = 1
vim.opt.signcolumn = "yes"

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.wrap = false



vim.opt.spelllang = {
	"en_au",
	"en-rare",
	"en_gb"
}

vim.opt.wildignore = {
	'*.o',
	'*.a',
	'*.pyc',
	'__pycache__',
	'node_modules'
}

