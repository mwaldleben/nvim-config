return {
  'nvim-telescope/telescope.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    { 'nvim-telescope/telescope-project.nvim', event = 'VeryLazy' },
  },
  opts = {},
  keys = {
    { '<leader>sh', '<cmd>Telescope help_tags<cr>', desc = 'Search Help' },
    { '<leader>sk', '<cmd>Telescope keymaps<cr>', desc = 'Search Keymaps' },
    { '<leader>sf', '<cmd>Telescope find_files<cr>', desc = 'Search Files' },
    { '<leader>sw', '<cmd>Telescope grep_string<cr>', desc = 'Search current word' },
    { '<leader>sg', '<cmd>Telescope live_grep<cr>', desc = 'Search by grep' },
    { '<leader>sd', '<cmd>Telescope diagnostics<cr>', desc = 'Search diagnostics' },
    { '<leader>sr', '<cmd>Telescope resume<cr>', desc = 'Search Resume' },
    { '<leader><leader>', '<cmd>Telescope buffers<cr>', desc = 'Find existing buffers' },
    {
      '<leader>sp',
      function()
        require('telescope').load_extension('project')
        require('telescope').extensions.project.project({})
      end,
      desc = 'Search projects',
    },
  },
}
