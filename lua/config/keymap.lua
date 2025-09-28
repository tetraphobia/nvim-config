return function()
	local keymap = vim.keymap

	-- Conform (formatting)
	keymap.set("n", "<leader>fo", function()
        vim.lsp.buf.format()
		-- local conform = require("conform")
		-- conform.format({ async = true })
	end, {})

    -- Code actions
    keymap.set("n", "<leader>ac", vim.lsp.buf.code_action)
    keymap.set("v", "<leader>ac", vim.lsp.buf.code_action)

	-- DAP (debugger)
	local dapui = require("dapui")
	local dap = require("dap")
	keymap.set("n", "<leader>D", dapui.toggle)
	keymap.set("n", ".", dap.toggle_breakpoint)
	keymap.set("n", "<leader>c", dap.continue)
	keymap.set("n", "<leader>S", dap.step_over)
	keymap.set("n", "<leader>s", dap.step_into)

	-- Neovim (compiling)
	keymap.set("n", "<leader>m", vim.cmd.make, {})

	-- Neovim (clipboard)
	keymap.set("v", "<C-c>", '"+y') -- Yank to system clipboard

	-- Neovim (selection)
	keymap.set("n", "<C-a>", "ggVG") -- Select all
	keymap.set("i", "<C-a>", "<Esc>ggVG") -- Select all in insert mode

	-- Neovim (terminal)
	keymap.set("n", "<leader>t", vim.cmd.term, {})

	-- Neovim (tabs)
	keymap.set("n", "<C-t>", vim.cmd.tabnew, {})
	keymap.set("i", "<C-t>", vim.cmd.tabnew, {})
	keymap.set("t", "<C-t>", vim.cmd.tabnew, {})
	keymap.set("n", "<S-h>", vim.cmd.tabprev, {})
	keymap.set("n", "<S-l>", vim.cmd.tabnext, {})

	-- Neovim (window navigation)
	keymap.set("n", "<C-h>", "<C-w>h")
	keymap.set("n", "<C-j>", "<C-w>j")
	keymap.set("n", "<C-k>", "<C-w>k")
	keymap.set("n", "<C-l>", "<C-w>l")
	keymap.set("i", "<C-h>", "<C-\\><C-N><C-w>h")
	keymap.set("i", "<C-j>", "<C-\\><C-N><C-w>j")
	keymap.set("i", "<C-k>", "<C-\\><C-N><C-w>k")
	keymap.set("i", "<C-l>", "<C-\\><C-N><C-w>l")
	keymap.set("t", "<C-h>", "<C-\\><C-N><C-w>h")
	keymap.set("t", "<C-j>", "<C-\\><C-N><C-w>j")
	keymap.set("t", "<C-k>", "<C-\\><C-N><C-w>k")
	keymap.set("t", "<C-l>", "<C-\\><C-N><C-w>l")
	keymap.set("t", "<Esc>", "<C-\\><C-n>")

	keymap.set("n", "<leader>q", function()
		-- Close window, but not if it's the last window.
		local count = vim.api.nvim_list_wins()
		if #count > 1 then
			vim.cmd.close()
		end
	end)

	-- Oil (file browsing)
	local oil = require("oil")
	keymap.set("n", "<leader>ef", function()
		oil.open_float()
	end, {})

	-- Telescope
	local telescope = require("telescope.builtin")

	-- Telescope (file finding)
	keymap.set("n", "<leader>fif", telescope.find_files, {})
	keymap.set("n", "<leader>fig", telescope.live_grep, {})

	-- Telescope (git)
	keymap.set("n", "<leader>fiGf", telescope.git_files, {})
	keymap.set("n", "<leader>fiGc", telescope.git_commits, {})
	keymap.set("n", "<leader>fiGb", telescope.git_branches, {})

	-- Telescope (lsp)
	-- TODO: implement this

	-- Telescope (treesitter)
	keymap.set("n", "<leader>fis", telescope.treesitter, {})

	-- Telescope (vim)
	keymap.set("n", "<leader>fib", telescope.buffers, {})
	keymap.set("n", "<leader>fic", telescope.commands, {})

	-- Trouble (diagnostics)
	keymap.set("n", "<leader>ds", function()
		vim.cmd.Trouble("lsp_document_symbols toggle pinned=true win.relative=win win.position=right")
	end, {})

	keymap.set("n", "<leader>dd", function()
		vim.cmd.Trouble("diagnostics toggle pinned=true")
	end, {})
end
