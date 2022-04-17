--                                  _   _
--   __ _  ___ _ __   ___ _ __ __ _| | | |_   _  __ _
--  / _` |/ _ \ '_ \ / _ \ '__/ _` | | | | | | |/ _` |
-- | (_| |  __/ | | |  __/ | | (_| | |_| | |_| | (_| |
--  \__, |\___|_| |_|\___|_|  \__,_|_(_)_|\__,_|\__,_|
--  |___/

lvim.log.level = "warn"
lvim.format_on_save = false
vim.opt.cursorline = false
vim.opt.smartindent = false
vim.opt.expandtab = false -- convert tabs to spaces
vim.opt.shiftwidth = 4 -- the number of spaces inserted for each indentation
vim.cmd("set noruler") -- hide bottom numbers, ALL etc
vim.opt.tabstop = 4 -- insert 4 spaces for a tab
lvim.format_on_save = false
vim.cmd("set path+=**") --Allow finding a file recursively
vim.cmd("let &fcs='eob: '") --Hide tilde on blank lines
vim.cmd("nnoremap <esc> :noh<return><esc>") -- Clear search highlights with Esc
lvim.leader = "space"
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
vim.cmd("autocmd CursorHold * :echo") --clear alert on the bottom (https://superuser.com/questions/1065125/how-to-control-vim-message-display-time)
vim.opt.showtabline = 1
lvim.builtin.treesitter.indent = {
  enable = true,
  disable = {
    "c"
  }
}

-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.notify.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.show_icons.git = 0

-- Parsers
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "go",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true
