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

vim.keymap.set("n", "<leader>oi", function()
  local file = vim.fn.expand("<cfile>")

  if file == "" or vim.fn.filereadable(file) == 0 then
    file = vim.api.nvim_buf_get_name(0)
  end

  if file == "" or vim.fn.filereadable(file) == 0 then
    vim.notify("找不到圖片檔案，請確認游標位置或 Buffer", vim.log.levels.WARN)
    return
  end

  local cmd = "xdg-open " .. vim.fn.shellescape(file)

  vim.fn.jobstart(cmd)

  vim.notify("已用 qimgv 開啟: " .. vim.fn.fnamemodify(file, ":t"), vim.log.levels.INFO)
end, { desc = "Open Image externally (qimgv)" })
