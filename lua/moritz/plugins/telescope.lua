return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local telescope = require("telescope")

    telescope.setup({
      defaults = {
        file_ignore_patterns = {
          ".git/",
          "%.x",
          "%.mod",
          "%.out",
          "%.pdf",
          "%.zip",
          "package-lock.json",
          "node_modules/",
        },
        path_display = { "truncate" },
      },
    })

    local keymap = vim.keymap

    keymap.set(
      "n",
      "<leader>ff",
      "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false, hidden = false}))<cr>",
      { desc = "Fuzzy find files in project directory" }
    )
    keymap.set(
      "n",
      "<leader>fh",
      "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false, hidden = true}))<cr>",
      { desc = "Fuzzy find files in project directory" }
    )
    keymap.set(
      "n",
      "<leader>fc",
      "<cmd>lua require'telescope.builtin'.find_files({ cwd = require'telescope.utils'.buffer_dir()})<cr>",
      { desc = "Fuzzy find files in cwd" }
    )
    keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
  end,
}
