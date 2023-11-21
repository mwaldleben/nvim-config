return {
	"tpope/vim-fugitive",
	config = function()
		local keymap = vim.keymap

		keymap.set("n", "<leader>gg", "<cmd>Git<cr>")
		keymap.set("n", "<leader>gd", "<cmd>Git diff<cr>")
		keymap.set("n", "<leader>gc", "<cmd>Git commit<cr>")
		keymap.set("n", "<leader>gp", "<cmd>Git push<cr>")
	end,
}
