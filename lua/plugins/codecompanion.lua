return {
  'olimorris/codecompanion.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  opts = {
    strategies = {
      chat = {
        name = 'copilot',
      },
      inline = {
        adapter = 'copilot',
      },
    },
    ignore_warnings = true,
  },
}
