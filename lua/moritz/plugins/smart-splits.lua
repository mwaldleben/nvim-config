return {
	"mrjones2014/smart-splits.nvim",
	config = function()
    local keymap = vim.keymap

    keymap.set("n", "<A-h>", "<cmd>SmartResizeLeft<cr>")
    keymap.set("n", "<A-l>", "<cmd>SmartResizeRight<cr>")
    keymap.set("n", "<A-k>", "<cmd>SmartResizeUp<cr>")
    keymap.set("n", "<A-j>", "<cmd>SmartResizeDown<cr>")

    keymap.set("n", "<C-h>", "<cmd>SmartCursorMoveLeft<cr>")
    keymap.set("n", "<C-l>", "<cmd>SmartCursorMoveRight<cr>")
    keymap.set("n", "<C-k>", "<cmd>SmartCursorMoveUp<cr>")
    keymap.set("n", "<C-j>", "<cmd>SmartCursorMoveDown<cr>")
  end,
}
