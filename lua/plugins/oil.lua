return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {},
  lazy = false,
  keys = {
    { '-', '<cmd>Oil --float<cr>', desc = 'Open parent directory with' },
  },
}
