-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
-- Ctrl-P
vim.g.ctrlp_cmd = 'CtrlPBuffer'
vim.g.luasnippets_path = "/home/javier/.config/nvim/lua/custom/snippets"
