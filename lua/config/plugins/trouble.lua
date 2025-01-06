return {
	"folke/trouble.nvim",
	opts = {
		modes = {
			lsp_document_symbols = {
				auto_open = false,
				open_no_results = true,
				warn_no_results = false,
			},
			diagnostics = {
				auto_open = false,
				open_no_results = true,
				warn_no_results = false,
				preview = {
					type = "split",
					relative = "win",
					position = "right",
					size = 0.3,
				},
			},
		},
	},
	cmd = "Trouble",
}
