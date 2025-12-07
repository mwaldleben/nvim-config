return {
  'NeogitOrg/neogit',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'sindrets/diffview.nvim',
  },
  keys = {
    { '<leader>gg', '<cmd>Neogit<cr>', desc = 'Neogit open' },
    { '<leader>gp', '<cmd>Neogit pull<cr>', desc = 'Neogit pull' },
    { '<leader>gP', '<cmd>Neogit push<cr>', desc = 'Neogit push' },
  },
}
