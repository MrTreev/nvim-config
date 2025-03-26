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
