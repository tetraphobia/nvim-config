vim.keymap.set('n', '<leader>gs', vim.cmd.Git)

vim.keymap.set('n', '<leader>p', function()
    vim.cmd.Git('push')
end)
