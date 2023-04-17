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

-- Netrw file explorer
vim.keymap.set("n", "<leader>fv", vim.cmd.Ex)

-- Down and up auto-center
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Format
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Go to next error and auto-center
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Find and replace
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Make working file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Run compiler command
vim.keymap.set("n", "<leader>c", [[:w! | !compiler <c-r>%<CR>]])

-- Open output document
vim.keymap.set("n", "<leader>p", [[:!opout <c-r>%<CR><CR>]])
