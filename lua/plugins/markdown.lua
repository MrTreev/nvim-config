return {
    'MeanderingProgrammer/markdown.nvim',
    main = "render-markdown",
    name = 'render-markdown',
    dependencies = {
        'nvim-treesitter/nvim-treesitter',
        'nvim-tree/nvim-web-devicons',
    },
    opts = {
        file_types = { 'markdown', 'rmd', 'Rmd' },
        render_modes = true,
        heading = {
            icons = { '# ', '## ', '### ', '#### ', '##### ', '###### ' },
            position = 'inline',
        },
    },
}
