return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "sindrets/diffview.nvim",
    "nvim-telescope/telescope.nvim",
  },
  config = function()
    local neogit = require("neogit")

    neogit.setup()

    local keymap = vim.keymap

    keymap.set("n", "<leader>gg", "<cmd>lua require('neogit').open()<cr>")
    keymap.set("n", "<leader>gc", "<cmd>Neogit commit<cr>")
    keymap.set("n", "<leader>gp", "<cmd>Neogit pull<cr>")
    keymap.set("n", "<leader>gP", "<cmd>Neogit push<cr>")
    keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>")
  end
}
