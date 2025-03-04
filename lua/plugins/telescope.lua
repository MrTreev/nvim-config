local builtin = require("telescope.builtin")

local function is_git_repo()
    vim.fn.system("git rev-parse --is-inside-work-tree")
    return vim.v.shell_error == 0
end

local function get_git_root()
    local dot_git_path = vim.fn.finddir(".git", ".;")
    return vim.fn.fnamemodify(dot_git_path, ":h")
end

local function grep_from_project_git_root()
    local opts = {}
    if is_git_repo() then
        opts = { cwd = get_git_root(), search = vim.fn.input("Grep > ") }
    else
        opts = { search = vim.fn.input("Grep > ") }
    end
    builtin.grep_string(opts)
end

local function find_sibling_files()
    builtin.find_files({ cwd = vim.fn.expand('%:p:h') })
end

local new_maker = function(filepath, bufnr, opts)
    filepath = vim.fn.expand(filepath)
    ---@diagnostic disable-next-line: missing-fields
    require("plenary.job"):new({
        command = "file",
        args = { "--mime-type", "-b", filepath },
        on_exit = function(j)
            local mime_type = vim.split(j:result()[1], "/")[1]
            if mime_type == "text" then
                require("telescope.previewers").buffer_previewer_maker(filepath, bufnr, opts)
            else
                -- maybe we want to write something to the buffer here
                vim.schedule(function()
                    vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, { "BINARY" })
                end)
            end
        end
    }):sync()
end

local function git_or_find_files()
    local opts = {}
    if is_git_repo() then
        opts = {
            cwd = get_git_root(),
        }
    end
    if is_git_repo() then
        builtin.git_files(opts)
    else
        builtin.find_files(opts)
    end
end

return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim"
    },
    lazy = false,
    opts = {
        defaults = {
            buffer_previewer_maker = new_maker,
        },
    },
    config = function(_, opts)
        require("telescope").setup(opts)
    end,
    keys = function()
        return {
            { '<leader>fh', builtin.help_tags },
            { '<leader>ff', git_or_find_files },
            { '<leader>fG', builtin.git_files },
            { '<leader>fF', builtin.find_files },
            { '<leader>fs', find_sibling_files },
            { '<leader>fg', grep_from_project_git_root },
        }
    end,
}
