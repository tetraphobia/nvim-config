local deps = {
	"rg", -- Telescope dependency
	"luarocks", -- Hererocks dependency
	"lua5.1", -- Luarocks dependency
	"tree-sitter", -- Treesitter dependency
	"wget", -- Mason dependency
}

return function()
	-- Disable dependency checking if `.nodepcheck` file is present.
	local disable_file = vim.fn.stdpath("config") .. "/.nodepcheck"
	if (vim.uv or vim.loop).fs_stat(disable_file) then
		return
	end

	-- Send warnings for each missing external dependency
	local depcheck_message_sent = false

	for _, dep in pairs(deps) do
		if vim.fn.executable(dep) ~= 1 then
			-- Send the depcheck message header if a missing dependency is found.
			if not depcheck_message_sent then
				vim.api.nvim_echo({
					{
						"[Depcheck] Missing dependencies found\n",
						"WarningMsg",
					},
					{
						"[Depcheck] To silence these messages, add a '.nodepcheck' file to the root of your Neovim config directory\n",
						"WarningMsg",
					},
				}, true, {})
				depcheck_message_sent = true
			end

			-- Warn about missing dependency
			vim.api.nvim_echo({
				{ "[Depcheck] Dependency '" .. dep .. "' is not installed\n", "WarningMsg" },
			}, true, {})
		end
	end
end
