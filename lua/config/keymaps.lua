-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.del("n", "<C-/>")
vim.keymap.del("t", "<C-/>")

local lazyterm = function()
  -- Open terminal in cwd
  Snacks.terminal()
  -- Open terminal in project root
  -- Snacks.terminal(nil, { cwd = LazyVim.root() })
end
vim.keymap.set("n", "<C-/>", lazyterm, { desc = "Terminal (cwd)" })
vim.keymap.set("t", "<C-/>", "<cmd>close<cr>", { desc = "Hide Terminal" })

local avante_toggle = function()
  require("avante.api").toggle()
end
vim.keymap.set("n", "<C-\\>", avante_toggle, { desc = "Avante: Toggle Chat Sidebar" })
