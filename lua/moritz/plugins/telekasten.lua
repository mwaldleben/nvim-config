return {
  "renerocksai/telekasten.nvim",
  dependencies = { "nvim-telescope/telescope.nvim" },
  config = function()
    require("telekasten").setup({
      home = vim.fn.expand("~/notes"),
      weeklies = vim.fn.expand("~/notes/planning"),
      template_new_weekly = vim.fn.expand("~/notes/planning/template.md"),
    })

    local keymap = vim.keymap

    keymap.set("n", "<leader>z", "<cmd>Telekasten panel<cr>")
    keymap.set("n", "<leader>zf", "<cmd>Telekasten find_notes<cr>")
    keymap.set("n", "<leader>zg", "<cmd>Telekasten search_notes<cr>")
    keymap.set("n", "<leader>zd", "<cmd>Telekasten goto_today<cr>")
    keymap.set("n", "<leader>zw", "<cmd>Telekasten goto_thisweek<cr>")
    keymap.set("n", "<leader>zz", "<cmd>Telekasten follow_link<cr>")
    keymap.set("n", "<leader>zn", "<cmd>Telekasten new_note<cr>")
    keymap.set("n", "<leader>zc", "<cmd>Telekasten show_calendar<cr>")
    keymap.set("n", "<leader>zb", "<cmd>Telekasten show_backlinks<cr>")
    keymap.set("n", "<leader>zI", "<cmd>Telekasten insert_img_link<cr>")
    keymap.set("i", "[[", "<cmd>Telekasten insert_link<cr>")
  end,
}
