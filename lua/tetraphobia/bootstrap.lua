-- Bootstrap lazy.nvim
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

    -- Colorscheme
    -- {
    --     'Mofiqul/dracula.nvim',
    --     as = 'dracula',
    --     config = function()
    --         vim.cmd('colorscheme dracula')
    --     end
    -- },

    {
        'catppuccin/nvim',
        name = 'catppuccin',
        priority = 1000
    },

    -- Treesitter
    {
        'windwp/nvim-ts-autotag',
        config = function()
            require('nvim-ts-autotag').setup()
        end
    },
    {
        'nvim-treesitter/nvim-treesitter',
        build = ":TSUpdate",
        config = function()
            local configs = require("nvim-treesitter.configs")

            configs.setup({
                ensure_installed = { "c", "lua", "javascript", "typescript", "html", "css", "java", "rust", "markdown" },
                sync_install = false,
                highlight = { enable = true },
                indent = { enable = true },
            })
        end
    },


    -- Vim Fugitive
    'tpope/vim-fugitive',

    -- CoC
    {
        'neoclide/coc.nvim',
        branch = 'release'
    },

    -- Autoclose
    'm4xshen/autoclose.nvim',

    -- vimtex
    'lervag/vimtex',

    -- devicons
    'nvim-tree/nvim-web-devicons',

    -- Comment
    {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    },

    -- Oil
    {
        'stevearc/oil.nvim',
        config = function()
            require("oil").setup({
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
        end
    },
})
