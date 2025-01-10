return function()
	local datadir = os.getenv("HOME") .. "/.tetra-neovim/"
	-- Line numbers
	vim.opt.number = true
	vim.opt.relativenumber = true

	-- Tabs
	vim.opt.tabstop = 4
	vim.opt.softtabstop = 4
	vim.opt.shiftwidth = 4
	vim.opt.expandtab = true

	-- Indentation
	vim.opt.smartindent = true

	-- Word wrapping
	vim.opt.wrap = false

	-- Undo files and backups
	vim.opt.swapfile = false
	vim.opt.backup = false
	vim.opt.undodir = datadir .. "/undodir"
	vim.opt.undofile = true

	-- Disable search highlighting
	vim.opt.hlsearch = false

	-- Enable 24-bit RGB color in terminal
	vim.opt.termguicolors = true

	-- Keep some lines always visible
	vim.opt.scrolloff = 6
	vim.opt.sidescrolloff = 6

	-- Searching
	vim.opt.ignorecase = true

	-- Statusline
	vim.opt.laststatus = 3
end
