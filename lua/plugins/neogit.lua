return {
  'NeogitOrg/neogit',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'sindrets/diffview.nvim',
  },
  keys = {
    { '<leader>gg', '<cmd>Neogit<cr>', desc = 'Neo[g]it' },
    { '<leader>gc', '<cmd>Neogit commit<cr>', desc = 'Neo[g]it [C]ommit' },
    { '<leader>gp', '<cmd>Neogit pull<cr>', desc = 'Neo[g]it [p]ull' },
    { '<leader>gP', '<cmd>Neogit push<cr>', desc = 'Neo[g]it [P]ush' },
  },
}
