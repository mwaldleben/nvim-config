local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  print("Error in require for toggleterm")
end

configs.setup {
  ensure_installed = { "lua", "c", "fortran", "latex", "make", "html", "css", "astro", "typescript", "org" },
  ignore_install = { "" },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = {"org"},
  },
}
