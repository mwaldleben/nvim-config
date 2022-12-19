local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
  print("Error in require for telescope")
end

telescope.setup({
  defaults = {
    file_ignore_patterns = {".git/", "data/", "%.o", "%.x", "%.mod", "%.out", "%.pdf", "%.zip"}
  }
})
