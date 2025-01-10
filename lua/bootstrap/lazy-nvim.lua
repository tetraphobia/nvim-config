-- Installs Lazy if it isn't found.
return function(lazy_install_path)
	if not (vim.uv or vim.loop).fs_stat(lazy_install_path) then
		vim.api.nvim_echo({
			{ "Installing Lazy to " .. lazy_install_path .. " ..." },
		}, true, {})

		local lazy_repo = "https://github.com/folke/lazy.nvim.git"
		vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazy_repo, lazy_install_path })

		if vim.v.shell_error ~= 0 then
			vim.api.nvim_echo({
				{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			}, true, {})
			vim.fn.getchar()
		end
	end

	vim.opt.rtp:prepend(lazy_install_path)
end
