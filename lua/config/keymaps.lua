-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
--
-- Open terminal in a vertical split
vim.keymap.set("n", "<leader>tv", function()
  vim.cmd("vsplit | terminal")
  vim.cmd("startinsert")
end, { desc = "Open terminal vertical" })

-- Open terminal in a new tab
vim.keymap.set("n", "<leader>tt", function()
  vim.cmd("tabnew | terminal")
  vim.cmd("startinsert")
end, { desc = "Open terminal in new tab" })

-- Exit terminal normal mode with double Esc
vim.keymap.set("t", "<Esc><Esc>", [[<C-\><C-n>]], { desc = "Exit terminal normal mode" })
