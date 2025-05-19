require "options"
require "mappings"
require "commands"

-- bootstrap plugins & lazy.nvim
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim" -- path where its going to be installed

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  }
end

vim.opt.rtp:prepend(lazypath)

local plugins = require "plugins"

require("lazy").setup(plugins, require "lazy_config")

-- Hide status bar
vim.opt.laststatus = 0
vim.opt.cmdheight = 0

-- Use terminal colors
vim.opt.termguicolors = false
vim.cmd.colorscheme("dim")

-- Show padding before line numbers only when needed
vim.opt.signcolumn = "auto"

vim.o.mouse = ""

-- Tab
--vim.opt.tabstop = 4
--vim.opt.shiftwidth = 4
--vim.opt.expandtab = true
