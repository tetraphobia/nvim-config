-- Toggle coc-explorer
vim.keymap.set('n', '<tab>', function() vim.cmd.CocCommand("explorer") end)

-- Dirbuf
vim.keymap.set('n', '<leader>ef', vim.cmd.Dirbuf)

-- Window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')
vim.keymap.set('i', '<C-h>', '<C-\\><C-N><C-w>h')
vim.keymap.set('i', '<C-j>', '<C-\\><C-N><C-w>j')
vim.keymap.set('i', '<C-k>', '<C-\\><C-N><C-w>k')
vim.keymap.set('i', '<C-l>', '<C-\\><C-N><C-w>l')
vim.keymap.set('t', '<C-h>', '<C-\\><C-N><C-w>h')
vim.keymap.set('t', '<C-j>', '<C-\\><C-N><C-w>j')
vim.keymap.set('t', '<C-k>', '<C-\\><C-N><C-w>k')
vim.keymap.set('t', '<C-l>', '<C-\\><C-N><C-w>l')
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')

vim.keymap.set('n', '<leader>s', '<C-w>s')
vim.keymap.set('n', '<leader>s', '<C-w>v')

-- Yanking
vim.keymap.set('v', '<C-c>', '\"+y')

-- Select All
vim.keymap.set('n', '<C-a>', 'ggVG')
vim.keymap.set('i', '<C-a>', '<Esc>ggVG')

