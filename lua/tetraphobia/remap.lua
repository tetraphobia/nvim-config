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

-- CoC Formatting
vim.keymap.set('n', '<leader>fa', function() vim.cmd.CocCommand("editor.action.format") end, { silent = true })

-- CoC Navigating Completions
vim.keymap.set('i', '<CR>', function()
    if vim.fn['coc#pum#visible']() == 1 then
        return vim.fn['coc#pum#confirm']();
    end
    return "\r"
end, { noremap = true, expr = true })
vim.keymap.set('i', '<C-j>', function()
    if vim.fn['coc#pum#visible']() == 1 then
        return vim.fn['coc#pum#next'](1);
    end
    return "<C-j>"
end, { noremap = true, expr = true })

vim.keymap.set('i', '<C-k>', function()
    if vim.fn['coc#pum#visible']() == 1 then
        return vim.fn['coc#pum#prev'](1);
    end
    return "<C-k>"
end, { noremap = true, expr = true })

-- CoC Goto Definition
vim.keymap.set('n', '<leader>fd', "<Plug>(coc-definition)", { silent = true })
vim.keymap.set('n', '<leader>fi', "<Plug>(coc-implementation)", { silent = true })
vim.keymap.set('n', '<leader>fr', "<Plug>(coc-references)", { silent = true })

-- CoC Sow documentation in preview window
function _G.show_docs()
    local cw = vim.fn.expand('<cword>')
    if vim.fn.index({ 'vim', 'help' }, vim.bo.filetype) >= 0 then
        vim.api.nvim_command('h ' .. cw)
    elseif vim.api.nvim_eval('coc#rpc#ready()') then
        vim.fn.CocActionAsync('doHover')
    else
        vim.api.nvim_command('!' .. vim.o.keywordprg .. ' ' .. cw)
    end
end

vim.keymap.set("n", "K", '<CMD>lua _G.show_docs()<CR>', { silent = true })

-- CoC Symbol renaming
vim.keymap.set("n", "<leader>rs", "<Plug>(coc-rename)", { silent = true })

-- CoC Misc
vim.keymap.set("n", "<leader>cc", vim.cmd.CocCommand, { silent = true })
vim.keymap.set("n", "<leader>cC", vim.cmd.CocConfig, { silent = true })
vim.keymap.set("n", "<leader>cd", function() vim.cmd.CocList("diagnostics") end, { silent = true })
vim.keymap.set("n", "<leader>ce", function() vim.cmd.CocList("extensions") end, { silent = true })
vim.keymap.set("n", "<leader>cs", function() vim.cmd.CocList("snippets") end, { silent = true })
