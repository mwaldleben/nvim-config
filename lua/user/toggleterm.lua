local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then
  print("Error in require for toggleterm")
end

toggleterm.setup({
  open_mapping = [[<c-\>]],
  -- shade_terminals = false,
  direction = "float",
})

function _G.set_terminal_keymaps()
  local term_opts = {noremap = true}
  -- vim.api.nvim_buf_set_keymap(0, "t", "<esc>", [[<C-\><C-n>]], term_opts)
  vim.api.nvim_buf_set_keymap(0, "t", "<C-h>", [[<C-\><C-n><C-W>h]], term_opts)
  vim.api.nvim_buf_set_keymap(0, "t", "<C-j>", [[<C-\><C-n><C-W>j]], term_opts)
  vim.api.nvim_buf_set_keymap(0, "t", "<C-k>", [[<C-\><C-n><C-W>k]], term_opts)
  vim.api.nvim_buf_set_keymap(0, "t", "<C-l>", [[<C-\><C-n><C-W>l]], term_opts)
end

vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')


local terminal = require("toggleterm.terminal").Terminal

local make = terminal:new({ cmd="make", hidden=false, count=1 })
function _MAKE_TOGGLE()
	make:toggle()
end

