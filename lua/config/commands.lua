return function()
	vim.api.nvim_create_user_command("TetraUpdateSync", function()
		vim.cmd.Lazy("sync")
		vim.cmd.MasonUpdate()
		vim.cmd.TSUpdateSync()
	end, { desc = "Updates and syncs Lazy packages, Mason registries, and Treesitter parsers" })
end
