return function()
    local bind = vim.keymap.set

    -- Conform (formatting)
    bind('n', '<leader>fo', function()
        local conform = require("conform")
        conform.format({ async = true })
    end, {})

    -- Neovim (compiling)
    bind('n', '<leader>m', vim.cmd.make, {})

    -- Neovim (clipboard)
    bind('v', '<C-c>', '\"+y') -- Yank to system clipboard

    -- Neovim (selection)
    bind('n', '<C-a>', 'ggVG') -- Select all
    bind('i', '<C-a>', '<Esc>ggVG') -- Select all in insert mode

    -- Neovim (terminal)
    bind('n', '<leader>t', vim.cmd.term, {})

    -- Neovim (tabs)
    bind('n', '<C-t>', vim.cmd.tabnew, {})
    bind('i', '<C-t>', vim.cmd.tabnew, {})
    bind('t', '<C-t>', vim.cmd.tabnew, {})
    bind('n', '<S-h>', vim.cmd.tabprev, {})
    bind('n', '<S-l>', vim.cmd.tabnext, {})

    -- Neovim (window navigation)
    bind('n', '<C-h>', '<C-w>h')
    bind('n', '<C-j>', '<C-w>j')
    bind('n', '<C-k>', '<C-w>k')
    bind('n', '<C-l>', '<C-w>l')
    bind('i', '<C-h>', '<C-\\><C-N><C-w>h')
    bind('i', '<C-j>', '<C-\\><C-N><C-w>j')
    bind('i', '<C-k>', '<C-\\><C-N><C-w>k')
    bind('i', '<C-l>', '<C-\\><C-N><C-w>l')
    bind('t', '<C-h>', '<C-\\><C-N><C-w>h')
    bind('t', '<C-j>', '<C-\\><C-N><C-w>j')
    bind('t', '<C-k>', '<C-\\><C-N><C-w>k')
    bind('t', '<C-l>', '<C-\\><C-N><C-w>l')
    bind('t', '<Esc>', '<C-\\><C-n>')

    bind('n', '<leader>q', function()
        -- Close window, but not if it's the last window.
        local count = vim.api.nvim_list_wins()
        if #count > 1 then
            vim.cmd.close()
        end
    end)

    -- Oil (file browsing)
    local oil = require('oil')
    bind('n', '<leader>ef', function() oil.open_float() end, {})

    -- Telescope
    local telescope = require('telescope.builtin')

    -- Telescope (file finding)
    bind('n', '<leader>fif', telescope.find_files, {})
    bind('n', '<leader>fig', telescope.live_grep, {})

    -- Telescope (git)
    bind('n', '<leader>fiGf', telescope.git_files, {})
    bind('n', '<leader>fiGc', telescope.git_commits, {})
    bind('n', '<leader>fiGb', telescope.git_branches, {})

    -- Telescope (lsp)
    -- TODO: implement this

    -- Telescope (treesitter)
    bind('n', '<leader>fis', telescope.treesitter, {})

    -- Telescope (vim)
    bind('n', '<leader>fib', telescope.buffers, {})
    bind('n', '<leader>fic', telescope.commands, {})

    -- Trouble (diagnostics)
    bind('n', '<Tab>', function()
        vim.cmd.Trouble("lsp_document_symbols toggle pinned=true win.relative=win win.position=left")
    end, {})

    -- Mini (completions)
    bind('i', '<CR>', function() -- Navigate down
        if vim.fn.pumvisible() ~= 0 then
            return "<C-y>"
        end
        return "<CR>"
    end, { noremap = true, expr = true})

    bind('i', '<C-j>', function() -- Navigate down
        if vim.fn.pumvisible() ~= 0 then
            return "<C-n>"
        end
        return "<C-j>"
    end, { noremap = true, expr = true})

    bind('i', '<C-k>', function() -- Navigate up
        if vim.fn.pumvisible() ~= 0 then
            return "<C-p>"
        end
        return "<C-k>"
    end, { noremap = true, expr = true})

    bind('i', '<Tab>', function() -- Navigate down
        if vim.fn.pumvisible() ~= 0 then
            return "<C-n>"
        end
        return "<Tab>"
    end, { noremap = true, expr = true})

    bind('i', '<C-Tab>', function() -- Navigate up
        if vim.fn.pumvisible() ~= 0 then
            return "<C-p>"
        end
        return "<C-Tab>"
    end, { noremap = true, expr = true})
end
