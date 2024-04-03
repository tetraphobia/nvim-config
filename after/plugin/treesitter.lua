local configs = require("nvim-treesitter.configs")

configs.setup({
    ensure_installed = { "c", "lua", "javascript", "typescript", "html", "css", "java", "rust", "markdown",
        "tsx" },
    sync_install = false,
    auto_install = true,
    highlight = { enable = true },
    indent = { enable = true },
})
