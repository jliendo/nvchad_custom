---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>dd"] = { "<cmd> Telescope diagnostics  <CR>", "diagnostics" },
  },
}
M.tabufline = {
  plugin = true,

  n = {
    -- cycle through buffers
    ["<C-TAB>"] = {
      function()
        require("nvchad_ui.tabufline").tabuflineNext()
      end,
      "goto next buffer",
    },
  }
}

-- more keybinds!

return M
