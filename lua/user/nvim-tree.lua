local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
  print("Error in require for nvim-tree")
end

nvim_tree.setup {
  disable_netrw = true,
}
