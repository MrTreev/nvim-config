local api = require("nvim-tree.api")

-- Functions from https://github.com/nvim-tree/nvim-tree.lua/wiki/Recipes#h-j-k-l-style-navigation-and-editing
local function edit_or_open() local node = api.tree.get_node_under_cursor() if node.nodes ~= nil then api.node.open.edit() else api.node.open.edit() api.tree.close() end end
local function vsplit_preview() local node = api.tree.get_node_under_cursor() if node.nodes ~= nil then api.node.open.edit() else api.node.open.vertical() end api.tree.focus() end

-- Global Keymaps
vim.api.nvim_set_keymap("n", "<leader>fe", ":NvimTreeToggle<cr>", {silent = true, noremap = true})

local function my_on_attach(bufnr)
    local function opts(desc) return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true } end
    api.config.mappings.default_on_attach(bufnr)

    vim.keymap.set("n", "l",        edit_or_open,                       opts("Edit or Open"))
    vim.keymap.set("n", "L",        vsplit_preview,                     opts("Vsplit Preview"))
    vim.keymap.set("n", "h",        api.tree.close,                     opts("Close"))
    vim.keymap.set("n", "H",        api.tree.collapse_all,              opts("Collapse All"))
    vim.keymap.set("n", "<C-t>",    api.tree.change_root_to_parent,     opts("Up"))
    vim.keymap.set("n", "?",        api.tree.toggle_help,               opts("Help"))
end

require("nvim-tree").setup({
	sort_by = "case_sensitive",
    on_attach = my_on_attach,
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = true,
    },
})

