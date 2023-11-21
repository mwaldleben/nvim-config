return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    require("nvim-tree").setup()

    vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<cr>")
  end,
}
