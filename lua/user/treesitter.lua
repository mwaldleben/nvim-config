local treesitter = require("nvim-treesitter.configs")

treesitter.setup {
  ensure_installed = { "lua", "c", "fortran", "latex", "make", "html", "css", "astro", "typescript", "org" },
  ignore_install = { "" },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = {"org"},
  },
}
