-- Default extensions
vim.g.coc_global_extensions = {'coc-explorer', 'coc-pairs', 'coc-lists', 'coc-snippets'}

-- Formatting
vim.keymap.set('n', '<leader>fa', function() vim.cmd.CocCommand("editor.action.format") end, { silent = true })

-- Navigating completions
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

-- Goto definition
vim.keymap.set('n', '<leader>fd', "<Plug>(coc-definition)", { silent = true })
vim.keymap.set('n', '<leader>fi', "<Plug>(coc-implementation)", { silent = true })
vim.keymap.set('n', '<leader>fr', "<Plug>(coc-references)", { silent = true })

-- Show documentation in preview window
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

-- Symbol renaming
vim.keymap.set("n", "<leader>rs", "<Plug>(coc-rename)", { silent = true })

-- Other CoC commands
vim.keymap.set("n", "<leader>cc", vim.cmd.CocCommand, { silent = true })
vim.keymap.set("n", "<leader>cC", vim.cmd.CocConfig, { silent = true })
vim.keymap.set("n", "<leader>cd", function() vim.cmd.CocList("diagnostics") end, { silent = true })
vim.keymap.set("n", "<leader>ce", function() vim.cmd.CocList("extensions") end, { silent = true })
vim.keymap.set("n", "<leader>cs", function() vim.cmd.CocList("snippets") end, { silent = true })
