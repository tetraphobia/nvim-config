vim.keymap.set('n', '<leader>fa', function() vim.cmd.CocCommand("editor.action.formatDocument") end)
vim.keymap.set('n', '<leader>dc', function() vim.cmd.CocCommand("deno.cache") end)
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
