-- Space as leader key
vim.keymap.set('', '<Space>', '<Nop>')
vim.g.mapleader = ' '

-- Comma as local leader key
vim.g.maplocalleader = ','

-- Turn off highlight search
vim.keymap.set('n', '<leader><esc>', '<cmd>nohls<cr>')

--  Stay in indent mode when visually selecting
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')
