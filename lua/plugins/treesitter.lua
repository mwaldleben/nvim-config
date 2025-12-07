return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    local treesitter = require('nvim-treesitter.configs')

    treesitter.setup({
      ensure_installed = {
        'lua',
        'c',
        'cpp',
        'fortran',
        'latex',
        'make',
        'html',
        'css',
        'astro',
        'typescript',
        'markdown',
      },
      ignore_install = { '' },
      highlight = {
        enable = true,
      },
    })
  end,
}
