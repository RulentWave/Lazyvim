return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        nu = { "nufmt" },
        lua = { "stylua" },
        rust = { "rustfmt", lsp_format = "fallback" },
      },
      formatters = {
        nufmt = {
          command = "nufmt",
          args = { "$FILENAME" },
          stdin = false,
        },
      },
    },
  },
}
