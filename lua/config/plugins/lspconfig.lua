return {
	"neovim/nvim-lspconfig",
	lazy = false,
	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"folke/neodev.nvim",
	},
	config = function()
		local lspconfig = require("lspconfig")

		-- Lua
		lspconfig.lua_ls.setup({
			diagnostics = {
				underline = true,
			},
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
				},
			},
		})

		lspconfig.zls.setup({})
		lspconfig.diagnosticls.setup({})
		lspconfig.pyright.setup({})
		lspconfig.rust_analyzer.setup({})
		lspconfig.denols.setup({})
	end,
}
