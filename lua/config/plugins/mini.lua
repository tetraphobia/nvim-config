return {
	"echasnovski/mini.nvim",
	config = function()
		require("mini.ai").setup()
		require("mini.align").setup()
		require("mini.comment").setup()
		require("mini.cursorword").setup()
		require("mini.pairs").setup()
		require("mini.git").setup()
		require("mini.diff").setup()
		require("mini.indentscope").setup({
			draw = {
				animation = require("mini.indentscope").gen_animation.none(),
			},
			symbol = "|",
		})
		require("mini.notify").setup()
		require("mini.completion").setup({
			delay = {
				completion = 10,
				info = 100,
				signature = 10,
			},
		})
		require("mini.icons").setup()
		require("mini.operators").setup()
		require("mini.surround").setup({
			mappings = {
				add = "sa", -- Add surrounding in Normal and Visual modes
				delete = "sd", -- Delete surrounding
				find = "sf", -- Find surrounding (to the right)
				find_left = "sF", -- Find surrounding (to the left)
				highlight = "sh", -- Highlight surrounding
				replace = "sr", -- Replace surrounding
				update_n_lines = "sn", -- Update `n_lines`

				suffix_last = "l", -- Suffix to search with "prev" method
				suffix_next = "n", -- Suffix to search with "next" method
			},
		})
	end,
}
