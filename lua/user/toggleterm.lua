local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then
  print("Error in require for toggleterm")
end

toggleterm.setup({
  open_mapping = [[<c-\>]],
  direction = "float",
})

local terminal = require("toggleterm.terminal").Terminal

local make = terminal:new({ cmd="make", hidden=false, count=1 })
function _MAKE_TOGGLE()
	make:toggle()
end

