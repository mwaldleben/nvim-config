return {
  "jay-babu/mason-null-ls.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "williamboman/mason.nvim",
    "nvimtools/none-ls.nvim",
    "neovim/nvim-lspconfig",
  },
  config = function()
    local lsp_zero = require("lsp-zero")
    lsp_zero.extend_lspconfig()

    local null_ls = require("null-ls")
    local null_opts = lsp_zero.build_options("null-ls", {})

    null_ls.setup({
      on_attach = function(client, bufnr)
        null_opts.on_attach(client, bufnr)
      end,
      sources = {
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.stylua,
      },
    })

    require("mason-null-ls").setup({
      ensure_installed = nil,
      automatic_installation = true,
      automatic_setup = true,
    })
  end,
}
