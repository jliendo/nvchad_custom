---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "onedark",
  theme_toggle = { "onedark", "one_light" },

  hl_override = highlights.override,
  hl_add = highlights.add,

  tabufline = {
    lazyload = true,
    overriden_modules = nil,
    enabled = false
  },

  telescope = {
    style = "bordered", -- borderless / bordered
  },

  cheatsheet = {
    theme = "simple", -- simple/grid
  },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
