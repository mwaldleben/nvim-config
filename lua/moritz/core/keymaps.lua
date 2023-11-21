local keymap = vim.keymap

-- leader key
keymap.set("", "<Space>", "<Nop>")
vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- normal mode (=n) --
-- turn off highlight search
keymap.set("n", "<leader><esc>", "<cmd>nohls<cr>")

-- search and replace
keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>//g<Left><Left>", { desc = "Search and replace word under cursor" })

-- insert mode (=i)

-- visual mode (=v) --
--  stay in indent mode
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- visual block mode (=x) --
