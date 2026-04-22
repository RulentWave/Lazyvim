return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "nu" })
    end,
  },

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        nushell = {
          cmd = { "nu", "--lsp" },
          filetypes = { "nu" },
          root_dir = function(fname)
            return vim.fs.root(fname, { ".git" }) or vim.fn.getcwd()
          end,
          single_file_support = true,
        },
      },
    },
  },
}
