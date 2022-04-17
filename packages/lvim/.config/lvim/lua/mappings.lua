--                              _                   _
--  _ __ ___   __ _ _ __  _ __ (_)_ __   __ _ ___  | |_   _  __ _
-- | '_ ` _ \ / _` | '_ \| '_ \| | '_ \ / _` / __| | | | | |/ _` |
-- | | | | | | (_| | |_) | |_) | | | | | (_| \__ \_| | |_| | (_| |
-- |_| |_| |_|\__,_| .__/| .__/|_|_| |_|\__, |___(_)_|\__,_|\__,_|
--                 |_|   |_|            |___/

-- Use which-key to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
lvim.builtin.which_key.mappings["m"] = { "<cmd>BufferLineCycleNext<CR>", "Go to the next buffer" }
lvim.builtin.which_key.mappings["n"] = { "<cmd>BufferLineCyclePrev<CR>", "Go to the next buffer" }
-- lvim.builtin.which_key.mappings["t"] = {
--   name = "+Trouble",
--   r = { "<cmd>Trouble lsp_references<cr>", "References" },
--   f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
--   d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
--   q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
--   l = { "<cmd>Trouble loclist<cr>", "LocationList" },
--   w = { "<cmd>Trouble workspace_diagnostics<cr>", "Wordspace Diagnostics" },
-- }
