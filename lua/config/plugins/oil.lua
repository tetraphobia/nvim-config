return {
	"stevearc/oil.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	opts = {
		default_file_explorer = true,
		watch_for_changes = true,
		view_options = {
			show_hidden = true,
		},
		keymaps = {
			["<"] = "actions.parent",
			-- Disable keymaps that conflict with navigation keymaps
			["<C-h>"] = false,
			["<C-l>"] = false,
		},
	},
}
