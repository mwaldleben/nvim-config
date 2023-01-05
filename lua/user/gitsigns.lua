local status_ok, gitsigns = pcall(require, "gitsigns")
if not status_ok then
  print("Error in require for gitsigns")
end

gitsigns.setup({
  attach_to_untracked = false
})
