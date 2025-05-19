return {
  { lazy = true, "nvim-lua/plenary.nvim" },
  { lazy = false, "MunifTanjim/prettier.nvim" },
  { "nvim-tree/nvim-web-devicons", opts = {} },
  { lazy = false, "xiyaowong/transparent.nvim"},
  { lazy = false, "jeffkreeftmeijer/vim-dim" },
  --{ "lewis6991/gitsigns.nvim", opts = {} },
  {
    "nvim-tree/nvim-tree.lua",
    cmd = { "NvimTreeToggle", "NvimTreeFocus" },
    opts = {},
  },

  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require "plugins.configs.treesitter"
    end,
  },

  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    cmd = { "Mason", "MasonInstall" },
    opts = {},
  },

  {
    "stevearc/conform.nvim",
    opts = require "plugins.configs.conform",
  },
}
