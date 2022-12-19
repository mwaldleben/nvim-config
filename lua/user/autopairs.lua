local status_ok, autopairs = pcall(require, "nvim-autopairs")
if not status_ok then
  print("Error in require for nvim-autopairs")
end

autopairs.setup()

local cmp_autopairs = require "nvim-autopairs.completion.cmp"
local cmp_status_ok, cmp = pcall(require, "cmp")
if not cmp_status_ok then
  print("Error in require for nvim-autopairs.completion.cmp")
end
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done{})
