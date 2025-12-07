return {
  'nvim-tree/nvim-tree.lua',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    sync_root_with_cwd = true,
    update_focused_file = {
      enable = true,
    },
    view = {
      width = {}, -- dynamically resize window based on longest line
    },
  },
  keys = {
    { '<leader>e', '<cmd>NvimTreeToggle<cr>', desc = 'Toggle NvimTreer' },
  },
}
