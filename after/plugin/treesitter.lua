require'nvim-treesitter.configs'.setup {
	ensure_installed = { "lua", "vim", "vimdoc", "query", "javascript", "typescript", "rust" },
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
	},
}
