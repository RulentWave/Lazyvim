-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.o.expandtab = false
vim.o.clipboard = ""
vim.o.wrap = true
vim.g.snacks_animate = false
--
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
