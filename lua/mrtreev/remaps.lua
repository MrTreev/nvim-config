-------------------------------------------------------------------------------
-- Keymaps for Neovim
-------------------------------------------------------------------------------

---------------------------------------
-- Define functions
---------------------------------------
---------------------------------------
-- Remaps
---------------------------------------

-- Set leader key
vim.g.mapleader = " "

-- Down and up auto-center
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Netrw - File Explorer
vim.keymap.set("n", "<leader>fe", vim.cmd.Ex)

-- Format - Beautify
vim.keymap.set("n", "<leader>b", vim.lsp.buf.format)

-- Go to next error and auto-center
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Make working file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Run compiler command
vim.keymap.set("n", "<leader>c", [[:w! | !compiler <c-r>%<CR>]])

-- Open output document
vim.keymap.set("n", "<leader>p", [[:!opout <c-r>%<CR><CR>]])
