return {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
  require("trouble").setup()

  local keymap = vim.keymap

  keymap.set("n", "<leader>tt", "<cmd>TroubleToggle<cr>")
  keymap.set("n", "<leader>tw", "<cmd>TroubleToggle workspace_diagnostics<cr>")
  keymap.set("n", "<leader>td", "<cmd>TroubleToggle document_diagnostics<cr>")
  keymap.set("n", "<leader>tl", "<cmd>TroubleToggle loclist<cr>")
  keymap.set("n", "<leader>tq", "<cmd>TroubleToggle quickfix<cr>")
  keymap.set("n", "gR", "<cmd>TroubleToggle lsp_references<cr>")
end,
}
