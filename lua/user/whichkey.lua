local status_ok, which_key = pcall(require, "which-key")
if not status_ok then
  print("Error in require for which-key")
end

which_key.setup()
