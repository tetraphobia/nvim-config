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
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		-- lspconfig
		lspconfig.lua_ls.setup({
			capabilities = capabilities,
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
		lspconfig.zls.setup({ capabilities = capabilities })
		lspconfig.diagnosticls.setup({ capabilities = capabilities })
		lspconfig.pyright.setup({ capabilities = capabilities })
		lspconfig.rust_analyzer.setup({})
		-- lspconfig.denols.setup({})
		lspconfig.ts_ls.setup({ capabilities = capabilities })
		lspconfig.jdtls.setup({ capabilities = capabilities })
		lspconfig.clangd.setup({ capabilities = capabilities })
		lspconfig.asm_lsp.setup({ capabilities = capabilities })
	end,
}
