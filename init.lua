-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Set Shell on Windows
if vim.fn.has("win32") == 1 or vim.fn.has("win64") == 1 then
  if vim.fn.executable("nu") == 1 then
    vim.o.shell = "nu"
  elseif vim.fn.executable("pwsh") == 1 then
    vim.o.shell = "pwsh"
  elseif vim.fn.executable("powershell") == 1 then
    vim.o.shell = "powershell"
  end
end

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
