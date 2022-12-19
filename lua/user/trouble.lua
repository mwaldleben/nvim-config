local status_ok, trouble = pcall(require, "trouble")
if not status_ok then
  print("Error in require for trouble")
end

trouble.setup({
  use_diagnostic_signs = true,
})

