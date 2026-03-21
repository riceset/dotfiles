return {
  -- dependência básica para vários plugins
  { lazy = true, "nvim-lua/plenary.nvim" },

  -- telescope
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8", -- ou use branch = "0.1.x" para atualizações consistentes
    dependencies = { "nvim-lua/plenary.nvim" },
    cmd = "Telescope", -- lazy-load ao executar o comando :Telescope
    opts = {
      defaults = {
        mappings = {
          i = {
            ["<C-h>"] = "which_key",
          },
        },
      },
    },
  },

  -- formatadores
  { lazy = false, "MunifTanjim/prettier.nvim" },
  {
    "stevearc/conform.nvim",
    opts = require "plugins.configs.conform",
  },

  -- ícones
  { "nvim-tree/nvim-web-devicons", opts = {} },

  -- aparência
  { lazy = false, "xiyaowong/transparent.nvim" },
  { lazy = false, "jeffkreeftmeijer/vim-dim" },

  -- gerenciador de arquivos
  {
    "nvim-tree/nvim-tree.lua",
    cmd = { "NvimTreeToggle", "NvimTreeFocus" },
    opts = {},
  },

  -- syntax highlight
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require "plugins.configs.treesitter"
    end,
  },

  -- gerenciador de LSP e formatadores
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    cmd = { "Mason", "MasonInstall" },
    opts = {},
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {},
  },
  {
    "neovim/nvim-lspconfig",
  },
}
