-- general
lvim.log.level = "warn"
lvim.format_on_save = false
vim.opt.relativenumber = true
vim.diagnostic.config({ virtual_text = false })
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
vim.opt.mouse = "c"
lvim.leader = "space"
vim.cmd("set syntax=whitespace")
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
vim.cmd("autocmd CursorHold * :echo") --clear alert on the bottom (https://superuser.com/questions/1065125/how-to-control-vim-message-display-time)
vim.opt.showtabline = 2
lvim.builtin.treesitter.indent = {
  enable = true,
  disable = {
    "c"
  }
}

-- Copilot
lvim.builtin.cmp.formatting.source_names["copilot"] = "(Copilot)"
table.insert(lvim.builtin.cmp.sources, 1, { name = "copilot" })--copilot-lunarvim debugger
vim.g.copilot_assume_mapped = true

-- theme
lvim.colorscheme = "sonokai"
vim.cmd("let g:sonokai_style = 'atlantis'")
vim.cmd("let g:sonokai_enable_italic=1")
vim.cmd("let g:sonokai_disable_italic_comment=1")
vim.cmd("let g:sonokai_transparent_background = 1")
vim.cmd("let g:sonokai_sign_column_background = 'none'")

-- switch between tabs on normal mode with tab / shift-tab
vim.cmd([[
	nnoremap  <silent>   <tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>
	nnoremap  <silent> <s-tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bprevious<CR>
]])

-- Toggle relative numbers with f3
vim.cmd([[
	nnoremap <silent> <f3> :if &relativenumber <CR> :set norelativenumber<CR> :else <CR> :set relativenumber <CR> :endif <CR>
]])
lvim.builtin.which_key.mappings["t"] = { "<cmd>ToggleTerm<CR>", "Terminal" }
lvim.builtin.which_key.mappings["r"] = { "<cmd>:w | :make run | :make fclean<CR>", "make run" }

lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true

-- Parsers
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "go",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

-- Transparent bar
local theme = require("lualine.themes.tokyonight")
theme.normal.c.bg = nil
lvim.builtin.lualine.options.theme = theme

lvim.builtin.lualine.style = "default"
local components = require("lvim.core.lualine.components")
lvim.builtin.lualine.sections.lualine_c = { "diff" }
lvim.builtin.lualine.sections.lualine_x = { "encoding", "filetype", "progress" }
lvim.builtin.lualine.sections.lualine_y = { "scrollbar" }

-- lvim.transparent_window = true

vim.cmd("set notitle")

-- Additional Plugins
lvim.plugins = {
  {
    "42Paris/42header",
    config = function()
      vim.cmd("let g:user42 = 'tkomeno'")
      vim.cmd("let g:mail42 = 'tkomeno@student.42tokyo.jp'")
    end
  },
  { "riceset/sonokai" },
  -- { "cacharle/c_formatter_42.vim" },
  -- { "github/copilot.vim" },
  {
	"zbirenbaum/copilot.lua",
	event = { "VimEnter" },
	config = function()
	  vim.defer_fn(function()
		print("copilot enter")
		require("copilot").setup {
		  plugin_manager_path = get_runtime_dir() .. "/site/pack/packer",
		}
	  end, 100)
	end,
  },
  {
	"zbirenbaum/copilot-cmp",
	after = { "copilot.lua", "nvim-cmp" },
	config = function()
	  require("copilot_cmp").setup()
	end
	},
	 { "lukas-reineke/indent-blankline.nvim",
		config = function()
			vim.opt.list = true
			-- vim.opt.listchars:append("space:⋅")
			vim.opt.listchars:append("eol:↴")
		end

	 },
	 { "norcalli/nvim-colorizer.lua",
		config = function()
			require'colorizer'.setup()
		end
	 },
	{ "xiyaowong/transparent.nvim" }
}
