-- general
lvim.log.level = "warn"
lvim.format_on_save = false
vim.opt.cursorline = false
vim.opt.smartindent = false
vim.opt.expandtab = false -- convert tabs to spaces
vim.opt.shiftwidth = 4 -- the number of spaces inserted for each indentation
vim.cmd ("set noruler") -- hide bottom numbers, ALL etc
vim.opt.tabstop = 4 -- insert 4 spaces for a tab
lvim.format_on_save = false
vim.cmd ("set path+=**") --Allow finding a file recursively
vim.cmd ("let &fcs='eob: '") --Hide tilde on blank lines
vim.cmd ("nnoremap <esc> :noh<return><esc>") -- Clear search highlights with Esc
lvim.leader = "space"
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
vim.cmd ("autocmd CursorHold * :echo") --clear alert on the bottom (https://superuser.com/questions/1065125/how-to-control-vim-message-display-time)
lvim.builtin.treesitter.indent = {
	enable = true,
	disable = {
		"c"
	}
}

-- theme
lvim.colorscheme = "sonokai"
vim.cmd ("let g:sonokai_style = 'atlantis'")
vim.cmd ("let g:sonokai_enable_italic=1")
vim.cmd ("let g:sonokai_disable_italic_comment=1")
vim.cmd ("let g:sonokai_transparent_background = 1")
vim.cmd ("let g:sonokai_sign_column_background = 'none'")

-- Use which-key to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
-- lvim.builtin.which_key.mappings["t"] = {
--   name = "+Trouble",
--   r = { "<cmd>Trouble lsp_references<cr>", "References" },
--   f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
--   d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
--   q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
--   l = { "<cmd>Trouble loclist<cr>", "LocationList" },
--   w = { "<cmd>Trouble workspace_diagnostics<cr>", "Wordspace Diagnostics" },
-- }

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

-- Additional Plugins
lvim.plugins = {
	{
		"42Paris/42header",
		config = function()
			vim.cmd("let g:user42 = 'tkomeno'")
			vim.cmd("let g:mail42 = 'tkomeno@student.42tokyo.jp'")
		end
	},
	{"riceset/sonokai"},
}
