local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({ { import = "moritz.plugins" }, { import = "moritz.plugins.lsp" } }, {
  install = {
    colorscheme = { "catppuccin-frappe" },
  },
  checker = {
    enabled = true,
    frequency = 86400
  },
  change_detection = {
    notify = false,
  },
})
