return {
  "nvim-neo-tree/neo-tree.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  keys = {
    { "<leader>e", "<cmd>Neotree reveal<cr>", { desc = "NeoTree reveal" } },
  },
  opts = {
    filesystem = {
      window = {
        mappings = {
          ["<leader>e"] = "close_window",
        },
      },
    },
  },
}
