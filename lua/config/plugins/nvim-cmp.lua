return {
	"hrsh7th/nvim-cmp",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"neovim/nvim-lspconfig",
        "saadparwaiz1/cmp_luasnip",
		"L3MON4D3/LuaSnip",
	},
	opts = function()
		local cmp = require("cmp")
		local luasnip = require("luasnip")

		cmp.setup({
			auto_brackets = {},
			expand = function(args)
				luasnip.lsp_expand(args.body)
				-- vim.snippet.expand(args.body)
			end,
			view = {
				entries = {
					selection_order = "top_down",
				},
				docs = {
					auto_open = true,
				},
			},
			mapping = {
				["<Tab>"] = cmp.mapping(function(fallback)
					if cmp.visible() then
						if luasnip.expandable() then
							luasnip.expand()
						else
							cmp.confirm({
								select = true,
							})
						end
					else
						fallback()
					end
				end),
				["<C-j>"] = cmp.mapping(function(fallback)
					if cmp.visible() then
						cmp.select_next_item()
					elseif luasnip.locally_jumpable(1) then
						luasnip.jump(1)
					else
						fallback()
					end
				end, { "i", "s" }),

				["<C-k>"] = cmp.mapping(function(fallback)
					if cmp.visible() then
						cmp.select_prev_item()
					elseif luasnip.locally_jumpable(-1) then
						luasnip.jump(-1)
					else
						fallback()
					end
				end, { "i", "s" }),
			},
			-- window = {
			--     completion = cmp.config.window.bordered(),
			--     documentation = cmp.config.window.bordered(),
			-- },
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				-- { name = "buffer" },
				-- { name = "path" },
				{ name = "luasnip" },
			}),
		})

	end,
}
