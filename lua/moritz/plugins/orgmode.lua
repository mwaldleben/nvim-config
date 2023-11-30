return {
  "nvim-orgmode/orgmode",
  dependencies = {
    { "nvim-treesitter/nvim-treesitter", lazy = true },
  },
  event = "VeryLazy",
  config = function()
    require("orgmode").setup_ts_grammar()

    require("nvim-treesitter.configs").setup({
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = { "org" },
      },
      ensure_installed = { "org" },
    })

    require("orgmode").setup({
      org_agenda_files = { "~/org/*" },
      org_default_notes_file = "~/org/refile.org",
    })

    -- TODO: Issues with folding, https://github.com/nvim-orgmode/orgmode/issues/614
    vim.cmd([[setlocal nofoldenable]])
  end,
}
