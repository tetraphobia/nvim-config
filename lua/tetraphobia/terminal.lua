local SHELL = "zsh"

vim.keymap.set('n', '<leader>t', function()
    vim.cmd.edit('term://' .. SHELL)
end)
