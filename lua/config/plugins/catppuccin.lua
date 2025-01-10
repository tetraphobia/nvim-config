return {
	"catppuccin/nvim",
	lazy = false,
	name = "catppuccin",
	priority = 1000,
	opts = {
		integrations = {
			dashboard = true,
			mason = true,
			mini = {
				enabled = true,
			},
			native_lsp = {
				enabled = true,
				underlines = {
					errors = { "undercurl" },
					hints = { "undercurl" },
					warnings = { "undercurl" },
					information = { "undercurl" },
				},
			},
			telescope = {
				enabled = true,
			},
			treesitter = true,
			treesitter_context = true,
			which_key = true,
		},
	},
}
