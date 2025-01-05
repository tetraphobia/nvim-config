local quarto = require("quarto")

quarto.setup {
    debug = false,
    closePreviewOnExit = true,
    lspFeatures = {
        enabled = true,
        chunks = "curly",
        languages = { "r", "python" },
        diagnostics = {
            enabled = true,
            triggers = { "BufWritePost" },
        },
        completion = {
            enabled = true,
        },
    },
    codeRunner = {
        enabled = false,
        default_method = nil,
        ft_runners = {},
        never_run = { "yaml" },
    },
}
