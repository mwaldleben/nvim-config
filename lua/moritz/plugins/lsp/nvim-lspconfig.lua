return {
  "neovim/nvim-lspconfig",
  cmd = { "LspInfo", "LspInstall", "LspStart" },
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    { "hrsh7th/cmp-nvim-lsp" },
    { "williamboman/mason-lspconfig.nvim" },
  },
  config = function()
    local lsp_zero = require("lsp-zero")
    lsp_zero.extend_lspconfig()

    lsp_zero.on_attach(function(_, bufnr)
      lsp_zero.default_keymaps({
        buffer = bufnr,
        preserve_mappings = false,
      })
    end)

    lsp_zero.set_sign_icons({
      error = "",
      warn = "",
      hint = "",
      inf = "",
    })

    -- TODO: fix for ltex
    local signs = { Error = "󰅚 ", Warn = "󰀪 ", Hint = " ", Info = " " }
    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
    end

    -- disable virtual text
    vim.diagnostic.config({
      virtual_text = false,
    })

    lsp_zero.format_mapping("gq", {
      format_opts = {
        async = false,
        timeout_ms = 10000,
      },
      servers = {
        ["null-ls"] = { "python", "cpp", "lua" },
      },
    })

    local servers = {
      "bashls",
      "clangd",
      "julials",
      "lua_ls",
      "pyright",
      "tailwindcss",
      "ts_ls",
    }

    require("mason-lspconfig").setup({
      ensure_installed = servers,
      automatic_installation = true,
      handlers = {
        lsp_zero.default_setup,
        lua_ls = function()
          require("lspconfig").lua_ls.setup({
            settings = {
              Lua = {
                diagnostics = {
                  globals = { "vim" },
                },
                workspace = {
                  library = {
                    [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                  },
                },
              },
            },
          })
        end,
        ltex = function()
          require("lspconfig").ltex.setup({
            filetypes = { "bib", "tex" },
          })
        end,
      },
    })
  end,
}
