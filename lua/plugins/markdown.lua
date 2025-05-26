local function enable_latex()
    require('nabla').enable_virt({
        autogen = false, render_visible = true
    })
end

local function disable_latex()
    require('nabla').disable_virt()
end

return {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = {
        'nvim-treesitter/nvim-treesitter',
        'nvim-tree/nvim-web-devicons',
        'nmder/nabla.nvim',
    },
    opts = {
        log_level = 'debug',
        file_types = { 'markdown', 'rmd', 'Rmd', },
        render_modes = true,
        heading = {
            icons = { '0 ', '0.0 ', '0.0.0 ', '0.0.0.0 ', '0.0.0.0.0 ', '0.0.0.0.0.0 ', },
        },
        latex = { enabled = false, },
        win_options = {
            conceallevel = {
                rendered = 2,
            },
        },
        on = {
            -- attach = enable_latex,
            -- render = enable_latex,
            -- clear = disable_latex,
        },
    },
}
