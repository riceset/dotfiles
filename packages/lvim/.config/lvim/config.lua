--                   __ _         _
--   ___ ___  _ __  / _(_) __ _  | |_   _  __ _
--  / __/ _ \| '_ \| |_| |/ _` | | | | | |/ _` |
-- | (_| (_) | | | |  _| | (_| |_| | |_| | (_| |
--  \___\___/|_| |_|_| |_|\__, (_)_|\__,_|\__,_|
--                        |___/

-- general
lvim.log.level = "warn"
lvim.format_on_save = false
vim.opt.relativenumber = true
lvim.lsp.diagnostics.virtual_text = false
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
vim.cmd("autocmd BufWritePost *.c CFormatter42")
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
vim.cmd("autocmd CursorHold * :echo") --clear alert on the bottom (https://superuser.com/questions/1065125/how-to-control-vim-message-display-time)
vim.opt.showtabline = 2
lvim.builtin.treesitter.indent = {
  enable = true,
  disable = {
    "c"
  }
}

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

-- highlights (https://www.reddit.com/r/neovim/comments/px8j89/highlight_command_in_initlua/)
vim.cmd([[
	augroup MyColors
	autocmd!
	autocmd ColorScheme * hi StatusLine ctermbg=NONE guibg=NONE
	augroup end
]])

lvim.builtin.which_key.mappings["t"] = { "<cmd>ToggleTerm<CR>", "Terminal" }
lvim.builtin.which_key.mappings["r"] = { "<cmd>:w | :make run | :make fclean<CR>", "make run" }

lvim.builtin.bufferline.options.always_show_bufferline = true;
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
    "riceset/42header",
    config = function()
      vim.cmd("let g:user42 = 'tkomeno'")
      vim.cmd("let g:mail42 = 'tkomeno@student.42tokyo.jp'")
    end
  },
  { "riceset/sonokai" },
  {
    "andweeb/presence.nvim",
    require("presence"):setup({
      -- General options
      auto_update        = true, -- Update activity based on autocmd events (if `false`, map or manually execute `:lua package.loaded.presence:update()`)
      neovim_image_text  = "Neovim", -- Text displayed when hovered over the Neovim image
      main_image         = "file", -- Main image display (either "neovim" or "file")
      client_id          = "793271441293967371", -- Use your own Discord application client id (not recommended)
      log_level          = nil, -- Log messages at or above this level (one of the following: "debug", "info", "warn", "error")
      debounce_timeout   = 10, -- Number of seconds to debounce events (or calls to `:lua package.loaded.presence:update(<filename>, true)`)
      enable_line_number = false, -- Displays the current line number instead of the current project
      blacklist          = {}, -- A list of strings or Lua patterns that disable Rich Presence if the current file name, path, or workspace matches
      buttons            = true, -- Configure Rich Presence button(s), either a boolean to enable/disable, a static table (`{{ label = "<label>", url = "<url>" }, ...}`, or a function(buffer: string, repo_url: string|nil): table)
      file_assets        = {}, -- Custom file asset definitions keyed by file names and extensions (see default config at `lua/presence/file_assets.lua` for reference)

      -- Rich Presence text options
      editing_text        = "Editing %s", -- Format string rendered when an editable file is loaded in the buffer (either string or function(filename: string): string)
      file_explorer_text  = "Browsing %s", -- Format string rendered when browsing a file explorer (either string or function(file_explorer_name: string): string)
      git_commit_text     = "Committing changes", -- Format string rendered when committing changes in git (either string or function(filename: string): string)
      plugin_manager_text = "Managing plugins", -- Format string rendered when managing plugins (either string or function(plugin_manager_name: string): string)
      reading_text        = "Reading %s", -- Format string rendered when a read-only or unmodifiable file is loaded in the buffer (either string or function(filename: string): string)
      workspace_text      = "Working on %s", -- Format string rendered when in a git repository (either string or function(project_name: string|nil, filename: string): string)
      line_number_text    = "Line %s out of %s", -- Format string rendered when `enable_line_number` is set to true (either string or function(line_number: number, line_count: number): string)
    })
  },
  { "riceset/c_formatter_42.vim" },
}
