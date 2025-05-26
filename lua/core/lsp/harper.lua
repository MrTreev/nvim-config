-- Harper (Spelling and grammar checker)
require("lspconfig").harper_ls.setup {
    filetypes = { "html", "markdown", "r", "rmd", },
    capabilities = require('cmp_nvim_lsp').default_capabilities(),
    settings = {
        ["harper-ls"] = {
            userDictPath = os.getenv("XDG_CONFIG_HOME") .. "/harper-ls/dictionary",
            fileDictPath = os.getenv("XDG_DATA_HOME") .. "/harper-ls/file_dictionaries",
            linters = {
                SpellCheck = true,
                SpelledNumbers = false,
                AnA = true,
                SentenceCapitalization = true,
                UnclosedQuotes = true,
                WrongQuotes = false,
                LongSentences = true,
                RepeatedWords = true,
                Spaces = true,
                Matcher = true,
                CorrectNumberSuffix = true
            },
            codeActions = {
                ForceStable = true, -- Force "Add to dictionary" to be at the top of code-actions
            },
            markdown = {
                IgnoreLinkTitle = false,
            },
            diagnosticSeverity = "hint",
            isolateEnglish = false,
            dialect = "British",
        },
    },
}
