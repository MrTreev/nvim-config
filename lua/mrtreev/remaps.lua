-- Set leader key
vim.g.mapleader = " "

-- Paging Down and up auto-center
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Netrw - File Explorer - File Explore
vim.keymap.set("n", "<leader>fe", vim.cmd.Lexplore)

-- Format - Beautify
vim.keymap.set("n", "<leader>b", vim.lsp.buf.format)

-- Go to error and auto-center
vim.keymap.set("n", "<C-j>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-k>", "<cmd>cprev<CR>zz")

-- Go to location and auto-center
vim.keymap.set("n", "<leader>j", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lprev<CR>zz")

-- Make working file executable - eXecutable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Run compiler command - Compile
vim.keymap.set("n", "<leader>c", [[:w! | !compiler <c-r>%<CR>]])

-- Open output document - Preview
vim.keymap.set("n", "<leader>p", [[:!opout <c-r>%<CR><CR>]])
