local status_ok, indent_blankline = pcall(require, "indent_blankline")
if not status_ok then
  print("Error in require for indent_blankline")
end

indent_blankline.setup({
	show_current_context = true,
})
