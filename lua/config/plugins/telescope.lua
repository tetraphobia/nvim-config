return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		-- Required dependency
		{ "nvim-lua/plenary.nvim" },
		-- For better sorting performance
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
}
