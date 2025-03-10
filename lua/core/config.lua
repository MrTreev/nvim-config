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

-- Set colourcolumn and linelength from editorconfig
vim.api.nvim_create_autocmd("BufEnter", {
    once = false,
    callback = function()
        local bufnr = vim.api.nvim_get_current_buf()
        local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(bufnr), ":p")
        local command = "editorconfig " .. vim.fn.fnameescape(filename)
        local default_line_length = "80"
        local set_line_length = nil
        for _, line in ipairs(vim.fn.systemlist(command)) do
            local found_length = line:match("max_line_length%s*=%s*(%d+)")
            if found_length then
                set_line_length = found_length
                break
            end
        end
        if set_line_length == nil then
            set_line_length = default_line_length
        end
        vim.api.nvim_set_option_value('colorcolumn', set_line_length, { win = 0 })
    end,
})
