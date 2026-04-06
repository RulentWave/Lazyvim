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
