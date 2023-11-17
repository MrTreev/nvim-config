-- Set leader key
vim.g.mapleader = " "

-- Make working file executable - eXecutable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", {silent = true})

-- Paging down and up auto-center
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Run compiler command - Compile
vim.keymap.set("n", "<leader>c", [[:w! | !compiler <c-r>%<CR>]])

-- Open output document - Preview
vim.keymap.set("n", "<leader>p", [[:!opout <c-r>%<CR><CR>]])

-- Better deleting and copying
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])
