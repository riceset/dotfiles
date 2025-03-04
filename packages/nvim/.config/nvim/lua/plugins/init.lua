return {
	{
		"stevearc/conform.nvim",
		config = function()
			require "configs.conform"
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("nvchad.configs.lspconfig").defaults()
			require "configs.lspconfig"
		end,
	},
	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"lua-language-server", "stylua",
				"html-lsp", "css-lsp" , "prettier",
				"clangd"
			},
		},
	},
	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
		ensure_installed = {
			"vim", "lua", "vimdoc",
			"html", "css"
			},
		},
	},
	{
		"cacharle/c_formatter_42.vim",
		lazy = false
	},
	{
		"42Paris/42header",
		lazy = false
	},
	{
		"catppuccin/nvim"
	}
}
