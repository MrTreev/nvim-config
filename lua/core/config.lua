vim.opt.clipboard:append { "unnamedplus" }

vim.opt.colorcolumn = "0"
vim.opt.guicursor = ""
vim.opt.guioptions = "a"
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

-- Set leader key
vim.g.mapleader = " "

-- Make working file executable - eXecutable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Paging down and up auto-center
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Run compiler command - Compile
vim.keymap.set("n", "<leader>c", [[:w! | !compiler <c-r>%<CR>]])

-- Open output document - Preview
vim.keymap.set("n", "<leader>p", [[:!opout <c-r>%<CR><CR>]])

-- Better deleting, copying, and pasting
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])
vim.keymap.set({ "n", "v" }, "<leader>p", [["_dP]])

vim.api.nvim_create_autocmd("BufEnter", {
	once = false,
	callback = function()
		local bufnr = vim.api.nvim_get_current_buf()
		local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(bufnr), ":p")
		local command = "editorconfig " .. vim.fn.fnameescape(filename)
		local max_line_length = "80"
		for _, line in ipairs(vim.fn.systemlist(command)) do
			local found_length = line:match("max_line_length%s*=%s*(%d+)")
			if found_length then
				max_line_length = found_length
				break
			end
		end
		if max_line_length then
			vim.api.nvim_win_set_option(0, 'colorcolumn', max_line_length)
			vim.api.nvim_buf_set_option(bufnr, 'textwidth', tonumber(max_line_length))
		else
			vim.api.nvim_win_set_option(0, 'colorcolumn', max_line_length)
		end
	end,
})
