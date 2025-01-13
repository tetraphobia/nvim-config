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
				-- Bottom pane
				-- preview = {
				-- 	type = "split",
				-- 	relative = "win",
				-- 	position = "right",
				-- 	size = 0.3,
				-- },
                -- Floating pane
                preview = {
                    type = "float",
                    relative = "editor",
                    border = "rounded",
                    title = "Diagnostics",
                    title_pos = "center",
                    position = "center",
                    size = { width = 0.4, height = 0.4 },
                    zindex = 200,
                }
			},
		},
	},
	cmd = "Trouble",
}
