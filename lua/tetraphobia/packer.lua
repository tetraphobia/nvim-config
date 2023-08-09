vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer
	use {
		'wbthomason/packer.nvim'
	}

	-- Telescope
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- Colorscheme
	use { 'Mofiqul/dracula.nvim', 
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
	use {
		'tpope/vim-fugitive'
	}

    -- LSP
    use {
        'neoclide/coc.nvim',
        branch = 'release'
    }

    -- Autoclose
    use {
        'm4xshen/autoclose.nvim'
    }
end)
