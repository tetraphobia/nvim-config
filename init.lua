-- Helper functions for bootstrapping
local bootstrap = require("bootstrap")
local config = require("config")

-- This must be done before bootstrapping Lazy
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Check for external dependencies
bootstrap.depcheck()

-- Bootstrap and configure Lazy
local lazy_install_path = vim.env.LAZY_INSTALL_PATH or vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
bootstrap.lazy(lazy_install_path)
config.lazy()

-- Configure colorscheme
config.colorscheme()

-- Configure editor
config.editor()

-- Configure user commands
config.commands()

-- Configure terminal
config.terminal()

-- Configure keymaps
config.keymap()
