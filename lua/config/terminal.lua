return function()
	-- Disable line numbers and automatically enter insert mode when terminals are launched
	vim.api.nvim_command("autocmd TermOpen * setlocal nonumber norelativenumber")
	vim.api.nvim_command("autocmd TermEnter * setlocal signcolumn=no")
end
