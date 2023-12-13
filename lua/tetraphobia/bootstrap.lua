local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
    -- Packer
    use 'wbthomason/packer.nvim'

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        requires = 'nvim-lua/plenary.nvim'
    }

    -- Colorscheme
    use {
        'Mofiqul/dracula.nvim',
        as = 'dracula',
        config = function()
            vim.cmd('colorscheme dracula')
        end
    }

    -- Treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    -- Vim Fugitive
    use 'tpope/vim-fugitive'

    -- LSP
    use {
        'neoclide/coc.nvim',
        branch = 'release'
    }

    -- Autoclose
    use 'm4xshen/autoclose.nvim'

    -- Nvim tree
    use {
        'nvim-tree/nvim-tree.lua',
        requires = 'nvim-tree/nvim-web-devicons',
        wants = 'nvim-web-devicons',
        config = function ()
            require("nvim-web-devicons").setup()
            require("nvim-tree").setup({
                hijack_cursor = false,
                view = {
                    width = 40
                }
            })
        end
    }


    if packer_bootstrap then
        require('packer').sync()
    end
end)
