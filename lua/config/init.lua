local config = {
	lazy = require("config.lazy-nvim"),
	keymap = require("config.keymap"),
	colorscheme = require("config.colorscheme"),
	editor = require("config.editor"),
	commands = require("config.commands"),
	terminal = require("config.terminal"),
    dap = require("config.dap"),
}

return config
