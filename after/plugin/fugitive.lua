vim.keymap.set('n', '<leader>gg', vim.cmd.Git)

vim.keymap.set('n', '<leader>gp', function()
    vim.cmd.Git('pull')
end)

vim.keymap.set('n', '<leader>gP', function()
    vim.cmd.Git('push')
end)

vim.keymap.set('n', '<leader>gs', function()
    vim.cmd.Git('status')
end)

vim.keymap.set('n', '<leader>gd', function()
    vim.cmd.Git('diff')
end)
