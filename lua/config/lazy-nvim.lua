return function()
	local lazy = require("lazy")

	lazy.setup({
		spec = {
			{ import = "config.plugins" },
		},
		install = {
			colorscheme = { "catppuccin" },
		},
		change_detection = {
			enabled = false,
			notify = false,
		},
		checker = {
			enabled = true,
		},
	})
end
