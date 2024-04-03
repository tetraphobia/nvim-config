local oil = require("oil")

oil.setup({
    wants = 'nvim-web-devicons',
    default_file_explorer = true,
    columns = {
        "icon",
        "permissions",
        "size",
    },
    keymaps = {
        ["<"] = "actions.parent",
        ["<C-h>"] = false,
        ["<C-l>"] = false,
    }
})
