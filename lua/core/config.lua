vim.opt.clipboard:append { "unnamedplus" }

vim.opt.colorcolumn = "0"
vim.opt.textwidth = 0
vim.opt.hidden = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.isfname:append("@-@")
vim.opt.laststatus = 3
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 8
vim.opt.shiftwidth = 4
vim.opt.signcolumn = "yes"
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.tabstop = 4
vim.opt.termguicolors = true
vim.opt.title = true
vim.opt.updatetime = 50
vim.opt.wrap = false
vim.opt.listchars = "tab:→ ,eol:↲,nbsp:•,space:·,extends:→,precedes:←"

vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.undodir = os.getenv("HOME") .. "/.local/share/nvim/undodir"
vim.opt.undofile = true

vim.opt.spelllang = {
    "en_au",
    "en_gb",
    "en_us",
    "en-rare",
}

vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.load_doxygen_syntax = 1
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
    pattern = { "*.dox", "*.doxygen" },
    callback = function()
        vim.opt.syntax = "c.doxygen"
        vim.api.nvim_command("highlight Comment cterm=none gui=none guifg=#6c7086")
    end,
})

-- Set leader key
vim.g.mapleader = " "

-- Compile working file (or run make if in project directory)
vim.keymap.set({ "n", }, "<leader>c", "<cmd>!compiler %<CR>", { silent = true })

-- Open file preview
vim.keymap.set({ "n", }, "<leader>o", "<cmd>!opout %<CR>", { silent = true })

-- Make working file executable - eXecutable
vim.keymap.set({ "n", }, "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Paging down and up auto-center
vim.keymap.set({ "n", }, "<C-d>", "<C-d>zz")
vim.keymap.set({ "n", }, "<C-u>", "<C-u>zz")

-- Quick-fix Navigation
vim.keymap.set({ "n", }, "<leader>fn", [[:cnext<CR>]])
vim.keymap.set({ "n", }, "<leader>fp", [[:cprevious<CR>]])

-- Better deleting, copying, and pasting
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set({ "n", }, "<leader>Y", [["+Y]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])
vim.keymap.set({ "n", "v" }, "<leader>p", [["_dP]])

-- Find and replace selected
vim.keymap.set({ "v" }, "<leader>r", [["hy:%s/<C-r>h//g<left><left>]])
