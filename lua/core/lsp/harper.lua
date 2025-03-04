-- Harper (Spelling and grammar checker)
require("lspconfig").harper_ls.setup {
    filetypes = {
        "html",
        "markdown",
        "r",
        "rmd",
    },
    capabilities = require('cmp_nvim_lsp').default_capabilities(),
    settings = {
        ["harper-ls"] = {
            codeActions = {
                forceStable = true -- Force "Add to dictionary" to be at the top of code-actions
            },
            linters = {
                spell_check = true,
                spelled_numbers = false,
                an_a = true,
                sentence_capitalization = true,
                unclosed_quotes = true,
                wrong_quotes = false,
                long_sentences = true,
                repeated_words = true,
                spaces = true,
                matcher = true,
                correct_number_suffix = true,
                number_suffix_capitalization = true,
                multiple_sequential_pronouns = true,
                linking_verbs = false,
                avoid_curses = true,
                terminating_conjunctions = true
            },
        },
    },
}
