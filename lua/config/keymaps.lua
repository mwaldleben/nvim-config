local keymap = vim.keymap

-- leader key
keymap.set("", "<Space>", "<Nop>")
vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- normal mode (=n) --
-- turn off highlight search
keymap.set("n", "<leader><esc>", "<cmd>nohls<cr>")

-- insert mode (=i)

-- visual mode (=v) --
--  stay in indent mode
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- visual block mode (=x) --
