---@type ChadrcConfig
local M = {}

M.ui = {
	theme = "tokyodark",
  transparency = true,
  statusline = {
    theme = "default",
    separator_style = "round"
  },
  tabufline = {
    order = {"buffers"}
  }
}

return M
