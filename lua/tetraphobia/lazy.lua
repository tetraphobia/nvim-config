-- lazy.nvim
local fn = vim.fn
local install_path = fn.stdpath('data') .. '/lazy/lazy.nvim'

if not (vim.uv or vim.loop).fs_stat(install_path) then
    vim.fn.system({ 'git', 'clone', '--filter=blob:none', 'https://github.com/folke/lazy.nvim.git',
        '--branch=stable', install_path })
end

vim.opt.rtp:prepend(install_path)

require("lazy").setup({
    -- Telescope
    'nvim-lua/plenary.nvim',
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.6',
    },

    -- Debugging
    'mfussenegger/nvim-dap',
    'mxsdev/nvim-dap-vscode-js',
    {
        'microsoft/vscode-js-debug',
        build = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out",
    },
    'nvim-neotest/nvim-nio',
    {
        'rcarriga/nvim-dap-ui',
        requires = { 'mfussenegger/nvim-dap', 'nvim-neotest/nvim-nio' },
    },

    -- Colorscheme
    {
        'catppuccin/nvim',
        name = 'catppuccin',
        priority = 1000
    },

    -- Treesitter
    {
        'nvim-treesitter/nvim-treesitter',
        build = ":TSUpdate",
    },

    -- Vim Fugitive
    'tpope/vim-fugitive',

    -- CoC
    {
        'neoclide/coc.nvim',
        branch = 'release'
    },

    -- devicons
    'nvim-tree/nvim-web-devicons',

    -- Oil
    'stevearc/oil.nvim',

    -- Mini
    { 'echasnovski/mini.nvim', version = false },
})
