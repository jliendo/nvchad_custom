---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>dd"] = { "<cmd> Telescope diagnostics  <CR>", "diagnostics" },
  },
}

-- more keybinds!

return M
